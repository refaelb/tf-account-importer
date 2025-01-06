import os
import subprocess
import yaml
import re

# Constants
BASE_PATH = "./aws"
LOG_FILE = "./logs.yaml"
logs = []

def clean_log(log):
    """Remove escape sequences, color codes, and unnecessary Unicode characters."""
    # Replace newlines with spaces
    log = log.replace("\n", " ")
    # Remove ANSI escape codes
    log = re.sub(r"\x1B(?:[@-Z\\-_]|\[[0-?]*[ -/]*[@-~])", "", log)
    # Remove Unicode box-drawing characters (e.g., ┐, └, │)
    log = re.sub(r"[\u2500-\u257F]", "", log)
    # Remove extra spaces
    log = re.sub(r"\s+", " ", log).strip()
    return log

def run_command(command, cwd):
    """Run a shell command and capture its output."""
    try:
        result = subprocess.run(command, cwd=cwd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        return result.stdout, result.stderr, result.returncode
    except Exception as e:
        return "", str(e), 1

def process_directory(directory):
    """Process a Terraform directory."""
    folder_name = os.path.basename(os.path.dirname(directory))
    resource_name = os.path.basename(directory)
    log_entry = {
        "folder": folder_name,
        "resource": resource_name,
        "path": directory,  # Add the specific path
        "logs": []
    }

    # Check if the directory has backend configuration
    if os.path.isfile(os.path.join(directory, "backend.tf")):
        log_entry["logs"].append("Running terraform init...")

        # Command 1: Initialize Terraform with backend config
        command = 'echo yes | terraform init --backend-config integration.tfbackend'
        stdout, stderr, code = run_command(command, cwd=directory)
        if code != 0:
            log_entry["logs"].append(f"terraform init failed: {clean_log(stderr)}")
        else:
            log_entry["logs"].append(f"terraform init success: {clean_log(stdout)}")

        # Command 2: Replace provider (optional)
        log_entry["logs"].append("Running terraform state replace-provider...")
        command = 'terraform state replace-provider -auto-approve "registry.terraform.io/-/aws" "hashicorp/aws"'
        stdout, stderr, code = run_command(command, cwd=directory)
        if code != 0:
            log_entry["logs"].append(f"terraform state replace-provider failed: {clean_log(stderr)}")
        else:
            log_entry["logs"].append(f"terraform state replace-provider success: {clean_log(stdout)}")

        # Command 3: Reinitialize Terraform (optional)
        log_entry["logs"].append("Reinitializing terraform...")
        command = 'echo yes | terraform init --backend-config integration.tfbackend'
        stdout, stderr, code = run_command(command, cwd=directory)
        if code != 0:
            log_entry["logs"].append(f"Reinitialization failed: {clean_log(stderr)}")
        else:
            log_entry["logs"].append(f"Reinitialization success: {clean_log(stdout)}")
    
        # Command 4: Plan Terraform
        log_entry["logs"].append("Running terraform plan...")
        command = 'terraform plan --var-file integration.tfvars'
        stdout, stderr, code = run_command(command, cwd=directory)
        if code != 0:
            log_entry["logs"].append(f"terraform plan failed: {clean_log(stderr)}")
        else:
            log_entry["logs"].append(f"terraform plan success: {clean_log(stdout)}")

    else:
        log_entry["logs"].append("No backend configuration found. Skipping initialization.")

    logs.append(log_entry)

def main():
    """Main function to process all Terraform directories."""
    if not os.path.isdir(BASE_PATH):
        print(f"Error: The specified path '{BASE_PATH}' does not exist.")
        return

    print(f"Starting terraform init in all subdirectories of: {BASE_PATH}")
    print(f"Logs will be written to {LOG_FILE}")

    for root, dirs, files in os.walk(BASE_PATH):
        for file in files:
            if file.endswith(".tf"):
                directory = os.path.dirname(os.path.join(root, file))
                process_directory(directory)
                break

    with open(LOG_FILE, "w") as log_file:
        yaml.dump({"logs": logs}, log_file, default_flow_style=False)

    print(f"Terraform init completed. Logs saved to {LOG_FILE}")

if __name__ == "__main__":
    main()

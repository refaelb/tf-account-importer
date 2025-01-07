import os
import subprocess
import yaml
import re
import sys

# Constants
BASE_PATH = "./aws"
LOG_FILE = "./logs.yaml"
logs = []

# Clean logs

def clean_log(log):
    """Remove escape sequences, color codes, and unnecessary Unicode characters."""
    log = log.replace("\n", " ")
    log = re.sub(r"\x1B(?:[@-Z\\-_]|\\[[0-?]*[ -/]*[@-~])", "", log)
    log = re.sub(r"[\u2500-\u257F]", "", log)
    log = re.sub(r"\s+", " ", log).strip()
    return log

# Run shell command
def run_command(command, cwd):
    try:
        process = subprocess.Popen(command, cwd=cwd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        for line in iter(process.stdout.readline, ''):
            print(line, end='')
        for line in iter(process.stderr.readline, ''):
            print(line, end='')
        process.wait()
        return "", "", process.returncode
    except Exception as e:
        return "", str(e), 1

# Process directory
def process_directory(directory, account_name):
    folder_name = os.path.basename(os.path.dirname(directory))
    resource_name = os.path.basename(directory)
    log_entry = {
        "folder": folder_name,
        "resource": resource_name,
        "path": directory,
        "logs": []
    }

    tfbackend_file = f"{account_name}.tfbackend"
    tfvars_file = f"{account_name}.tfvars"

    if os.path.isfile(os.path.join(directory, "backend.tf")):
        log_entry["logs"].append("Running terraform init...")
        command = f'echo yes | terraform init --backend-config {tfbackend_file}'
        stdout, stderr, code = run_command(command, cwd=directory)
        if code != 0:
            log_entry["logs"].append(f"terraform init failed: {clean_log(stderr)}")
        else:
            log_entry["logs"].append(f"terraform init success: {clean_log(stdout)}")

        log_entry["logs"].append("Running terraform state replace-provider...")
        command = 'terraform state replace-provider -auto-approve "registry.terraform.io/-/aws" "hashicorp/aws"'
        stdout, stderr, code = run_command(command, cwd=directory)
        if code != 0:
            log_entry["logs"].append(f"terraform state replace-provider failed: {clean_log(stderr)}")
        else:
            log_entry["logs"].append(f"terraform state replace-provider success: {clean_log(stdout)}")

        log_entry["logs"].append("Reinitializing terraform...")
        command = f'echo yes | terraform init --backend-config {tfbackend_file}'
        stdout, stderr, code = run_command(command, cwd=directory)
        if code != 0:
            log_entry["logs"].append(f"Reinitialization failed: {clean_log(stderr)}")
        else:
            log_entry["logs"].append(f"Reinitialization success: {clean_log(stdout)}")

        log_entry["logs"].append("Running terraform plan...")
        command = f'terraform plan --var-file {tfvars_file}'
        stdout, stderr, code = run_command(command, cwd=directory)
        if code != 0:
            log_entry["logs"].append(f"terraform plan failed: {clean_log(stderr)}")
        else:
            log_entry["logs"].append(f"terraform plan success: {clean_log(stdout)}")
    else:
        log_entry["logs"].append("No backend configuration found. Skipping initialization.")

    logs.append(log_entry)
    with open(LOG_FILE, "w") as log_file:
        yaml.dump({"logs": logs}, log_file, default_flow_style=False)

# Main function
def main():
    if len(sys.argv) < 2:
        print("Usage: python script.py <account_name>")
        return

    account_name = sys.argv[1]

    if not os.path.isdir(BASE_PATH):
        print(f"Error: The specified path '{BASE_PATH}' does not exist.")
        return

    print(f"Starting terraform init in all subdirectories of: {BASE_PATH}")
    print(f"Logs will be written to {LOG_FILE}")

    for root, dirs, files in os.walk(BASE_PATH):
        for file in files:
            if file.endswith(".tf"):
                directory = os.path.dirname(os.path.join(root, file))
                process_directory(directory, account_name)
                break

    print(f"Terraform init completed. Logs saved to {LOG_FILE}")

if __name__ == "__main__":
    main()

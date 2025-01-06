# Automate Terraform Resource Imports and Setup

This guide provides a step-by-step process for installing **Terraformer**, importing AWS resources into Terraform, and configuring Terraform state management for multiple regions and profiles.

---

## Installation: Terraformer

Follow these steps to install **Terraformer** for all supported providers:

```bash
export PROVIDER=all
curl -LO "https://github.com/GoogleCloudPlatform/terraformer/releases/download/$(curl -s https://api.github.com/repos/GoogleCloudPlatform/terraformer/releases/latest | grep tag_name | cut -d '"' -f 4)/terraformer-${PROVIDER}-darwin-amd64"
chmod +x terraformer-${PROVIDER}-darwin-amd64
sudo mv terraformer-${PROVIDER}-darwin-amd64 /usr/local/bin/terraformer
```

---

## Import All Resources to Terraform

Use the `import.sh` script to import AWS resources for specified regions and profiles. The resources will be organized into the directory structure `./<provider>/<region>/<service>`.

### Usage

```bash
chmod +x import.sh && ./import.sh <your_regions> <your_profile>
```

### example:
```bash
 import.sh && ./import.sh us-east-1, us-west-2  dev-account
```

## Generate Backend Configuration Files
The `create-files.sh` script generates backend configuration files for managing Terraform state.


### Usage
``` bash
chmod +x create-files.sh && ./create-files.sh -profile <your profile> -bucket <your bucket name to terraform state>
```
### example:
```bash
 create-files.sh && ./create-files.sh dev-account terraform-bucket-state
```

## run terraform & get logs to logs.yaml file
### Usage

```python
python3 terraform-command.py
```

## run script to fix errors

```python
python3 fix.py
```




## Run Terraform Commands in Each Generated Folder
```bash
terraform init  --backend-config integration.tfbackend 
terraform state replace-provider -auto-approve "registry.terraform.io/-/aws" "hashicorp/aws" 
terraform init  --backend-config integration.tfbackend 
terraform plan  --var-file integration.tfvars 
```
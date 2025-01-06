#!/bin/bash

# Default values
region="us-east-1"
bucket_region="us-east-1"
profile="default"
bucket="terraform-bucket-state"
account_name="default-account"

# Parse command-line arguments (support both positional arguments and flags)
if [[ "$#" -eq 4 ]]; then
  # Positional arguments
  profile="$1"
  bucket="$2"
  bucket_region="$3"
  account_name="$4"
elif [[ "$#" -gt 0 ]]; then
  # Flags
  while [[ "$#" -gt 0 ]]; do
    case $1 in
      -region) region="$2"; shift ;;
      -bucket-region) bucket_region="$2"; shift ;;
      -profile) profile="$2"; shift ;;
      -bucket) bucket="$2"; shift ;;
      -account-name) account_name="$2"; shift ;;
      *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
  done
fi

# Define the source directory containing the files to copy
src_dir="./src-files"

# Define the target base directory
target_base_dir="./aws"

# Check if source directory exists
if [[ ! -d "${src_dir}" ]]; then
  echo "Source directory does not exist: ${src_dir}"
  exit 1
fi

# Check if target base directory exists
if [[ ! -d "${target_base_dir}" ]]; then
  echo "Target base directory does not exist: ${target_base_dir}"
  exit 1
fi

# Iterate through each region in the target base directory
for region_folder in "${target_base_dir}"/*/; do
  # Skip if not a directory
  if [[ ! -d "${region_folder}" ]]; then
    continue
  fi

  # Extract the region name from the folder path
  region_name=$(basename "${region_folder}")

  echo "Processing region: ${region_name}"

  # Iterate through each service folder inside the region
  for service_folder in "${region_folder}"/*/; do
    # Skip if not a directory
    if [[ ! -d "${service_folder}" ]]; then
      continue
    fi

    # Extract the service name
    service_name=$(basename "${service_folder}")

    echo "Processing service: ${service_name} in region: ${region_name}"

    # Copy and replace placeholders in the files
    for file in "${src_dir}"/*; do
      if [[ -f "${file}" ]]; then
        # Define the target file path
        target_file="${service_folder}/$(basename "${file}")"

        # Replace placeholders with actual values and write to the target file
        sed "s/\${REGION}/${region_name}/g; s/\${PROFILE}/${profile}/g; s/\${BUCKET}/${bucket}/g; s/\${BUCKET_REGION}/${bucket_region}/g; s/\${folder_name}/${service_name}/g; s/\${ACCOUNT_NAME}/${account_name}/g" "${file}" > "${target_file}"

        echo "Copied and updated file: ${target_file}"
      fi
    done

    # Replace placeholders in all existing files within the service folder
    for existing_file in "${service_folder}"/*; do
      if [[ -f "${existing_file}" ]]; then
        sed -i "s/\${ACCOUNT_NAME}/${account_name}/g" "${existing_file}"
        echo "Updated ACCOUNT_NAME placeholder in: ${existing_file}"
      fi
    done

    # Rename any file with `${ACCOUNT_NAME}` in its name
    for file_to_rename in "${service_folder}"/\${ACCOUNT_NAME}*; do
      if [[ -e "${file_to_rename}" ]]; then
        new_file_name=$(echo "${file_to_rename}" | sed "s/\${ACCOUNT_NAME}/${account_name}/g")
        mv "${file_to_rename}" "${new_file_name}"
        echo "Renamed file: ${file_to_rename} -> ${new_file_name}"
      fi
    done
  done
done

echo "All files processed successfully with PROFILE=${profile}, BUCKET=${bucket}, BUCKET_REGION=${bucket_region}, ACCOUNT_NAME=${account_name}."

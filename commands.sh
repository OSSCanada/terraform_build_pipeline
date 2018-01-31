#! /bin/bash

# az login --service-principal -u $AZ_SERVICE_PRINCIPAL_ID -p $AZ_SERVICE_PRINCIPAL_SECRET --tenant $AZ_TENANT_ID

# az account set --subscription="$AZ_SUBSCRIPTION_ID"

env

echo $TF_VAR_BACKEND_ACCESS_KEY

terraform init -backend-config="access_key=$TF_VAR_BACKEND_ACCESS_KEY" -backend-config="storage_account_name=$TF_VAR_BACKEND_STORAGE_ACCOUNT_NAME" -backend-config="container_name=$TF_VAR_BACKEND_CONTAINER_NAME" -backend-config="key=$TF_VAR_BACKEND_KEY"

terraform apply
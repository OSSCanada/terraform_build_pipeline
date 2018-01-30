#! /bin/bash

# az login --service-principal -u $AZ_SERVICE_PRINCIPAL_ID -p $AZ_SERVICE_PRINCIPAL_SECRET --tenant $AZ_TENANT_ID

# az account set --subscription="$AZ_SUBSCRIPTION_ID"

echo $AZ_SERVICE_PRINCIPAL_ID

terraform init \
    -backend-config="access_key=$TF_VAR_backend_access_key" \
    -backend-config="storage_account_name=$TF_VAR_backend_storage_account_name" \
    -backend-config="container_name=$TF_VAR_backend_container_name" \
    -backend-config="key=$TF_VAR_backend_key"

terraform apply
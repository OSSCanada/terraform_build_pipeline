#! /bin/bash

az login --service-principal -u $AZ_SERVICE_PRINCIPAL_ID -p $AZ_SERVICE_PRINCIPAL_SECRET --tenant $AZ_TENANT_ID

az account set --subscription="$AZ_SUBSCRIPTION_ID"
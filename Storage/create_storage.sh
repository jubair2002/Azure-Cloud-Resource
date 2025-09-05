## storage account create 
az storage account create \
  --name mystorageaccount1234 \
  --resource-group MyResourceGroup \
  --location eastus \
  --sku Standard_LRS \
  --kind StorageV2

## delete a storage account
az storage account delete \
  --name mystorageaccount123 \
  --resource-group myResourceGroup

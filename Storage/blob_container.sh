
## create a blob container in the storage account
az storage container create \
  --name mycontainer \
  --account-name mystorageaccount123 \
  --account-key <STORAGE_ACCOUNT_KEY>

## upload a blob to the container
az storage blob upload \
  --account-name mystorageaccount123 \
  --account-key <STORAGE_ACCOUNT_KEY> \
  --container-name mycontainer \
  --name myfile.txt \
  --file ./localfile.txt

## list blobs in the container
az storage blob list \
  --account-name mystorageaccount123 \
  --account-key <STORAGE_ACCOUNT_KEY> \
  --container-name mycontainer \
  --output table

## download a blob from the container
az storage blob download \
  --account-name mystorageaccount123 \
  --account-key <STORAGE_ACCOUNT_KEY> \
  --container-name mycontainer \
  --name myfile.txt \
  --file ./downloadedfile.txt



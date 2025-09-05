## create a file share
az storage share create \
  --name myfileshare \
  --account-name mystorageaccount123 \
  --account-key <STORAGE_ACCOUNT_KEY>

## upload a file to the file share
az storage file upload \
  --account-name mystorageaccount123 \
  --account-key <STORAGE_ACCOUNT_KEY> \
  --share-name myfileshare \
  --source ./localfile.txt

## list files in the file share
az storage file list \
  --account-name mystorageaccount123 \
  --account-key <STORAGE_ACCOUNT_KEY> \
  --share-name myfileshare \
  --output table

## download a file from the file share
az storage file download \
  --account-name mystorageaccount123 \
  --account-key <STORAGE_ACCOUNT_KEY> \
  --share-name myfileshare \
  --path localfile.txt \
  --dest ./downloaded_localfile.txt


## create public IP address
az network public-ip create \
  --resource-group MyResourceGroup \
  --name MyPublicIP1 \
  --sku Standard \
  --allocation-method Static
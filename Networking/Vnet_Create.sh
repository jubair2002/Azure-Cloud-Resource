## create a virtual network
az network vnet create \
  --resource-group MyResourceGroup \
  --name MyVNet \
  --address-prefix 10.0.0.0/16 \
  --location eastasia
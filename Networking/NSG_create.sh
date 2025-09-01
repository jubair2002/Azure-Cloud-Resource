## create network security group
az network nsg create \
  --resource-group MyResourceGroup \
  --name MyNSG \
  --location eastus

  ## associate nsg to subnet
  az network vnet subnet update \
  --resource-group MyResourceGroup \
  --vnet-name MyVnet \
  --name MySubnet \
  --network-security-group MyNSG

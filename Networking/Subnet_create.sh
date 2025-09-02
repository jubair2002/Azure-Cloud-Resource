## create a subnet in a virtual network
az network vnet subnet create \
  --resource-group MyResourceGroup \
  --vnet-name MyVNet \
  --name Subnet-01 \
  --address-prefix 10.0.1.0/24
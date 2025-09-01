## create a NAT gateway
az network nat gateway create \
  --resource-group MyResourceGroup \
  --name MyNatGateway \
  --public-ip-addresses MyPublicIP \
  --sku Standard

  ## associate the NAT gateway to a subnet
  az network vnet subnet update \
  --resource-group MyResourceGroup \
  --vnet-name MyVnet \
  --name MySubnet \
  --nat-gateway MyNatGateway
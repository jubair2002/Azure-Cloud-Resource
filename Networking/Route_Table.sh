## create a route table 
az network route-table create \
  --resource-group MyResourceGroup \
  --name MyRouteTable

## associate the route table to a subnet
  az network vnet subnet update \
  --resource-group MyResourceGroup \
  --vnet-name MyVnet \
  --name MySubnet \
  --route-table MyRouteTable
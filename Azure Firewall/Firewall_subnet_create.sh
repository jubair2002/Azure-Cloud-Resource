## create firewall subnet
az network vnet subnet create \
  --resource-group MyResourceGroup \
  --vnet-name MyVNet\
  --name AzureFirewallManagementSubnet \
  --address-prefix 10.0.2.0/24

az network vnet subnet create \
  --resource-group MyResourceGroup \
  --vnet-name MyVNet \
  --name AzureFirewallSubnet \
  --address-prefix 10.0.3.0/24
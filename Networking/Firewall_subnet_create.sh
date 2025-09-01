## create firewall subnet
az network vnet subnet create \
  --resource-group MyResourceGroup \
  --vnet-name MyVNet-01 \
  --name AzureFirewallManagementSubnet \
  --address-prefix 10.0.1.0/24

az network vnet subnet create \
  --resource-group MyResourceGroup \
  --vnet-name MyVNet-01 \
  --name AzureFirewallSubnet \
  --address-prefix 10.0.1.0/24
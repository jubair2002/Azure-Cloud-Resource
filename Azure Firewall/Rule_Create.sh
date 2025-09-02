# Deny Facebook
az network firewall application-rule create \
  --firewall-name MyFirewall \
  --resource-group MyResourceGroup \
  --collection-name VM1-AppRules \
  --name Deny-Facebook \
  --priority 100 \
  --action Deny \
  --rule-type ApplicationRule \
  --protocols "Https=443" \
  --source-addresses 10.0.1.4 \     //vm private ips
  --target-fqdns "*.facebook.com"

# Deny Google
az network firewall application-rule create \
  --firewall-name MyFirewall \
  --resource-group MyResourceGroup \
  --collection-name VM1-AppRules \
  --name Deny-Google \
  --priority 110 \
  --action Deny \
  --rule-type ApplicationRule \
  --protocols "Https=443" \
  --source-addresses 10.0.1.4 \
  --target-fqdns "*.google.com"

# Allow All Other Sites
az network firewall application-rule create \
  --firewall-name MyFirewall \
  --resource-group MyResourceGroup \
  --collection-name VM1-AppRules \
  --name Allow-All \
  --priority 120 \
  --action Allow \
  --rule-type ApplicationRule \
  --protocols "Http=80" "Https=443" \
  --source-addresses 10.0.1.4 \
  --target-fqdns "*"

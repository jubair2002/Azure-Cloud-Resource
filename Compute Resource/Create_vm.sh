## create Virtual Machine Using password authentication
az vm create \
  --resource-group MyResourceGroup \
  --name MyUbuntuVM \
  --location eastasia \
  --image Ubuntu2204 \
  --size Standard_B1s \
  --admin-username azureuser \
  --admin-password 'jubair2002!@#$' \
  --authentication-type password \
  --vnet-name MyVNet \
  --subnet Subnet-01 \
  --public-ip-sku Standard

## create Virtual Machine Using ssh-key authentication
az vm create \
    --resource-group MyResourceGroup \
    --name MyUbuntuVM \
    --location eastasia \
    --image Ubuntu2204 \
    --size Standard_B1s \
    --admin-username azureuser \
    --ssh-key-values ~/.ssh/id_rsa.pub \
    --authentication-type ssh \
    --vnet-name MyVNet-01 \
    --subnet Subnet-01 \
    --public-ip-sku Standard
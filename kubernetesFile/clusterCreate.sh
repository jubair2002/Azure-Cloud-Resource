# create AKS cluster
az aks create \
  --resource-group myResourceGroup \
  --name myAKSCluster \
  --node-count 1 \
  --node-vm-size Standard_B2s \
  --location eastus \
  --generate-ssh-keys

# get credentials for kubectl
az aks get-credentials --resource-group myResourceGroup --name myAKSCluster

# verify the connection to the cluster
kubectl get nodes
kubectl cluster-info
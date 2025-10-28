# Create a deployment
kubectl create deployment <name> --image=<image>

# List deployments
kubectl get deployments

# Describe a deployment
kubectl describe deployment <name>

# Scale a deployment
kubectl scale deployment <name> --replicas=3

# Update image of a deployment
kubectl set image deployment/<name> <container>=<new-image>

# Delete a deployment
kubectl delete deployment <name>

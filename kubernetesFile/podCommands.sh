# List pods in current namespace
kubectl get pods

# List pods in all namespaces
kubectl get pods -A

# Describe a specific pod
kubectl describe pod <pod-name>

# View logs of a pod
kubectl logs <pod-name>

# Stream logs (live)
kubectl logs -f <pod-name>

# Execute a command inside a pod
kubectl exec -it <pod-name> -- /bin/bash

# Delete a pod
kubectl delete pod <pod-name>

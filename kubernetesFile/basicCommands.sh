# Check cluster info
kubectl cluster-info

# List all available contexts
kubectl config get-contexts

# Switch context (if multiple clusters)
kubectl config use-context <context-name>

# View current context
kubectl config current-context

# Apply a configuration file
kubectl apply -f <file>.yaml

# Delete resources from a file
kubectl delete -f <file>.yaml

# View all resources created from a file
kubectl get -f <file>.yaml

# Get pods with wide output (node info, IP)
kubectl get pods -o wide

# Get all resources in current namespace
kubectl get all

# Watch resource changes live
kubectl get pods -w
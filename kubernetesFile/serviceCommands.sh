# Create a service (ClusterIP)
kubectl expose deployment <name> --port=80 --target-port=80

# Create a LoadBalancer service
kubectl expose deployment <name> --port=80 --target-port=80 --type=LoadBalancer

# List services
kubectl get svc

# Describe a service
kubectl describe svc <service-name>

# Delete a service
kubectl delete svc <service-name>

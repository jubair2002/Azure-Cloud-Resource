# Docker Command Cheat Sheet

## Image Management

### Pull Images
```bash
# Pull latest image
docker pull ubuntu

# Pull specific tag
docker pull ubuntu:20.04

# Pull from specific registry
docker pull registry.example.com/image:tag
```

### List Images
```bash
# List all images
docker images

# List images with specific format
docker images --format "table {{.Repository}}\t{{.Tag}}\t{{.ID}}\t{{.Size}}"

# List image IDs only
docker images -q
```

### Remove Images
```bash
# Remove single image
docker rmi ubuntu:20.04

# Remove image by ID
docker rmi abc123def456

# Force remove image
docker rmi -f ubuntu:20.04

# Remove all unused images
docker image prune

# Remove all images
docker rmi $(docker images -q)
```

### Build Images
```bash
# Build from Dockerfile
docker build -t myapp:latest .

# Build with custom Dockerfile
docker build -f Dockerfile.dev -t myapp:dev .

# Build with build args
docker build --build-arg NODE_VERSION=16 -t myapp:latest .

# Build without cache
docker build --no-cache -t myapp:latest .
```

### Tag Images
```bash
# Tag an image
docker tag myapp:latest myapp:v1.0

# Tag for registry
docker tag myapp:latest registry.example.com/myapp:latest
```

### Push Images
```bash
# Push to Docker Hub
docker push username/myapp:latest

# Push to private registry
docker push registry.example.com/myapp:latest

# Push all tags
docker push --all-tags username/myapp
```

## Container Management

### Run Containers
```bash
# Basic run
docker run ubuntu

# Run in detached mode
docker run -d nginx

# Run with interactive terminal
docker run -it ubuntu /bin/bash

# Run with port mapping
docker run -p 8080:80 nginx

# Run with volume mount
docker run -v /host/path:/container/path ubuntu

# Run with environment variables
docker run -e NODE_ENV=production -e PORT=3000 myapp

# Run with custom name
docker run --name mycontainer nginx

# Run with restart policy
docker run --restart=always nginx

# Run with resource limits
docker run --memory=512m --cpus=1.0 nginx

# Combined common flags
docker run -d --name webapp -p 8080:80 -v $(pwd):/app -e NODE_ENV=production myapp:latest
```

### List Containers
```bash
# List running containers
docker ps

# List all containers (including stopped)
docker ps -a

# List container IDs only
docker ps -q

# List with custom format
docker ps --format "table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"
```

### Container Control
```bash
# Start container
docker start container_name

# Stop container
docker stop container_name

# Restart container
docker restart container_name

# Pause container
docker pause container_name

# Unpause container
docker unpause container_name

# Kill container
docker kill container_name
```

### Remove Containers
```bash
# Remove container
docker rm container_name

# Force remove running container
docker rm -f container_name

# Remove all stopped containers
docker container prune

# Remove all containers
docker rm $(docker ps -aq)
```

## Container Interaction

### Execute Commands
```bash
# Execute command in running container
docker exec container_name ls -la

# Interactive shell
docker exec -it container_name /bin/bash

# Execute as specific user
docker exec -u root -it container_name /bin/bash

# Execute with environment variables
docker exec -e VAR=value container_name env
```

### Logs
```bash
# View logs
docker logs container_name

# Follow logs (like tail -f)
docker logs -f container_name

# Show only recent logs
docker logs --tail 100 container_name

# Show logs with timestamps
docker logs -t container_name

# Follow logs from specific time
docker logs --since 2023-01-01T00:00:00 container_name
```

### Copy Files
```bash
# Copy from container to host
docker cp container_name:/path/to/file /host/path

# Copy from host to container
docker cp /host/path/file container_name:/path/to/destination
```

### Inspect Containers
```bash
# Get detailed container info
docker inspect container_name

# Get specific info (IP address)
docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' container_name

# Get container stats
docker stats

# Get stats for specific container
docker stats container_name
```

## Volume Management

### Create and Manage Volumes
```bash
# Create volume
docker volume create myvolume

# List volumes
docker volume ls

# Inspect volume
docker volume inspect myvolume

# Remove volume
docker volume rm myvolume

# Remove unused volumes
docker volume prune
```

### Use Volumes
```bash
# Mount named volume
docker run -v myvolume:/app/data myapp

# Mount bind volume (host directory)
docker run -v /host/path:/container/path myapp

# Read-only mount
docker run -v /host/path:/container/path:ro myapp
```

## Network Management

### Network Commands
```bash
# List networks
docker network ls

# Create network
docker network create mynetwork

# Create network with custom driver
docker network create --driver bridge mynetwork

# Inspect network
docker network inspect mynetwork

# Connect container to network
docker network connect mynetwork container_name

# Disconnect container from network
docker network disconnect mynetwork container_name

# Remove network
docker network rm mynetwork

# Remove unused networks
docker network prune
```

## System Management

### System Information
```bash
# Show Docker system info
docker info

# Show Docker version
docker version

# Show disk usage
docker system df

# Show system events
docker events
```

### Cleanup Commands
```bash
# Remove unused containers, networks, images
docker system prune

# Remove everything including volumes
docker system prune --volumes

# Remove unused images
docker image prune

# Remove unused containers
docker container prune

# Remove unused volumes
docker volume prune

# Remove unused networks
docker network prune
```

## Docker Compose (Bonus)

### Basic Compose Commands
```bash
# Start services
docker-compose up

# Start in detached mode
docker-compose up -d

# Build and start
docker-compose up --build

# Stop services
docker-compose down

# Stop and remove volumes
docker-compose down -v

# View logs
docker-compose logs

# Follow logs
docker-compose logs -f

# Scale service
docker-compose up --scale web=3

# Execute command in service
docker-compose exec web /bin/bash
```

## Common Flag Reference

| Flag | Description | Example |
|------|-------------|---------|
| `-d` | Detached mode | `docker run -d nginx` |
| `-it` | Interactive + TTY | `docker run -it ubuntu bash` |
| `-p` | Port mapping | `docker run -p 8080:80 nginx` |
| `-v` | Volume mount | `docker run -v /data:/app/data myapp` |
| `-e` | Environment variable | `docker run -e NODE_ENV=prod myapp` |
| `--name` | Container name | `docker run --name myapp nginx` |
| `--rm` | Remove after exit | `docker run --rm ubuntu echo "hello"` |
| `-f` | Force operation | `docker rm -f container` |
| `-q` | Quiet (IDs only) | `docker ps -q` |
| `-a` | Show all | `docker ps -a` |
| `--restart` | Restart policy | `docker run --restart=always nginx` |
| `--memory` | Memory limit | `docker run --memory=512m nginx` |
| `--cpus` | CPU limit | `docker run --cpus=1.0 nginx` |

## Quick Examples

### Development Setup
```bash
# Run database
docker run -d --name postgres -e POSTGRES_DB=myapp -e POSTGRES_PASSWORD=secret -p 5432:5432 postgres:13

# Run Redis
docker run -d --name redis -p 6379:6379 redis:alpine

# Run your app with volume mounting for development
docker run -d --name myapp -p 3000:3000 -v $(pwd):/app -e NODE_ENV=development node:16
```

### Production Deployment
```bash
# Pull latest image
docker pull myregistry/myapp:latest

# Stop old container
docker stop myapp || true

# Remove old container
docker rm myapp || true

# Run new container
docker run -d --name myapp --restart=always -p 80:3000 -e NODE_ENV=production myregistry/myapp:latest
```

### Debugging
```bash
# Check container logs
docker logs --tail 50 -f myapp

# Get into container
docker exec -it myapp /bin/bash

# Check container resources
docker stats myapp

# Inspect container config
docker inspect myapp
```
#!/bin/bash

echo "=== Voting App Cleanup Script ==="
echo "This will stop and remove voting app containers"
echo ""
read -p "Continue? (y/n): " confirm

if [ "$confirm" != "y" ]; then
    echo "Cancelled."
    exit 0
fi

# Stop voting app containers
echo "Stopping voting app..."
docker stop vote-vote-1 vote-result-1 vote-worker-1 vote-db-1 vote-redis-1

# Remove containers
echo "Removing containers..."
docker rm vote-vote-1 vote-result-1 vote-worker-1 vote-db-1 vote-redis-1

# Clean Docker Swarm replicas (optional)
read -p "Remove Docker Swarm web replicas? (y/n): " swarm_confirm
if [ "$swarm_confirm" = "y" ]; then
    docker service rm web 2>/dev/null || echo "No swarm service found"
    docker swarm leave --force 2>/dev/null || echo "Not in swarm mode"
fi

echo "✅ Cleanup complete!"
echo "To restart: docker-compose up -d"

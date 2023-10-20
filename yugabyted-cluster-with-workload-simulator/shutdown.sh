#!/bin/bash
docker compose down --remove-orphans --volumes


# Remove any unused Docker networks
docker network prune -f

# Remove any unused Docker volumes
docker volume prune -f
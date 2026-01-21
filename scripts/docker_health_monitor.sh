#!/bin/bash
# Generic Docker Watchdog for Open Source Portfolio
# Goal: Automatically restart containers marked as 'unhealthy'

echo "Starting Docker Health Audit..."

# Find IDs of containers marked as unhealthy by Docker Engine
UNHEALTHY_IDS=$(docker ps -q -f health=unhealthy)

if [ -n "$UNHEALTHY_IDS" ]; then
    echo "Found unhealthy containers: $UNHEALTHY_IDS"
    for ID in $UNHEALTHY_IDS; do
        NAME=$(docker inspect --format='{{.Name}}' $ID)
        echo "Restarting failed container: $NAME"
        docker restart $ID
    done
    echo "Recovery actions completed."
else
    echo "All containers are healthy. No action required."
fi

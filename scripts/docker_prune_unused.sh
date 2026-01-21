#!/bin/bash
# Removes dangling images, stopped containers, and unused networks
# to reclaim disk space on Hybrid nodes.

echo "Cleaning up unused Docker resources..."

# Prune system without requiring user confirmation (-f)
docker system prune -f --volumes

echo "Cleanup complete. Storage optimized."

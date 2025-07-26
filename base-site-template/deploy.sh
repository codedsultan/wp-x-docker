#!/bin/bash
# base-site-template/deploy.sh

# Exit immediately if a command fails
set -e

# Check if .env file exists
if [ ! -f .env ]; then
    echo "❌ .env file not found. Please copy .env.example to .env and fill in the values."
    exit 1
fi

echo "▶️ Pulling latest images..."
docker compose pull

echo "🚀 Deploying WordPress site for ${DOMAIN}..."
docker compose up -d --remove-orphans

echo "✅ Deployment complete!"
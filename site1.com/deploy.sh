#!/bin/bash
set -e

echo "▶️  Starting deployment..."

# Load env variables
source .env

echo "🔧 Bringing up containers..."
docker compose up -d

echo "📂 Syncing wp-content (optional)..."
# rsync -av ./local-wp-content/ html/wp-content/

echo "🗃️  Importing database (optional)..."
# scp db.sql your-vps:/var/www/${DOMAIN}/db.sql
# docker exec -i db-${DOMAIN} mysql -u${DB_USER} -p${DB_PASSWORD} ${DB_NAME} < db.sql

echo "✅ Deployment complete for ${DOMAIN}"

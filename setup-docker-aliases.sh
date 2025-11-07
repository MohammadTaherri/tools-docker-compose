#!/bin/bash

# Add MongoDB aliases
echo "alias mongo-up='docker compose -f /mnt/c/src/tools/mongo-docker-compose.yml -p mongo up -d'" >> ~/.bashrc
echo "alias mongo-down='docker compose -p mongo down'" >> ~/.bashrc
echo "alias mongo-sh='docker exec -it mongodb mongosh'" >> ~/.bashrc

# Add RabbitMQ aliases
echo "alias rabbit-up='docker compose -f /mnt/c/src/tools/rabbit-docker-compose.yml -p rabbit up -d'" >> ~/.bashrc
echo "alias rabbit-down='docker compose -p rabbit down'" >> ~/.bashrc

# Add Redis aliases
echo "alias redis-up='docker compose -f /mnt/c/src/tools/redis-docker-compose.yml -p redis up -d'" >> ~/.bashrc
echo "alias redis-down='docker compose -p redis down'" >> ~/.bashrc
echo "alias redis-cli='docker exec -it redis redis-cli'" >> ~/.bashrc

# Reload bash configuration
echo "✅ Aliases added to ~/.bashrc. Reloading..."
source ~/.bashrc

echo "🎉 All Docker aliases have been set up successfully!"

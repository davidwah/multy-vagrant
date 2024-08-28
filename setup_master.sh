#!/bin/bash
# Update package list and install Nginx
sudo apt-get update
sudo apt-get install -y nginx

# Configure Nginx as a load balancer
cat <<EOL | sudo tee /etc/nginx/sites-available/load_balancer
upstream backend {
    server worker1;
    server worker2;
}

server {
    listen 80;

    location / {
        proxy_pass http://backend;
    }
}
EOL

# Enable the configuration and restart Nginx
sudo ln -s /etc/nginx/sites-available/load_balancer /etc/nginx/sites-enabled/
sudo systemctl restart nginx

#!/bin/sh

PORT=${PORT:-3838}

# Update config Shiny agar bind ke port $PORT
echo "server {
  listen $PORT;
  location / {
    site_dir /srv/shiny-server;
    log_dir /var/log/shiny-server;
    directory_index on;
  }
}" > /etc/shiny-server/shiny-server.conf

echo "Starting Shiny on port $PORT ..."
exec shiny-server

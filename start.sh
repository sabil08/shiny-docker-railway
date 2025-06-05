#!/bin/sh

PORT=${PORT:-3838}

cat > /etc/shiny-server/shiny-server.conf <<EOF
server {
  listen ${PORT};
  location / {
    site_dir /srv/shiny-server;
    log_dir /var/log/shiny-server;
    directory_index on;
  }
}
EOF

echo "Shiny Server running on port $PORT..."
exec shiny-server

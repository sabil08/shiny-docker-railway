#!/bin/sh

# default port: 3838 jika PORT tidak diset oleh Railway
PORT=${PORT:-3838}

echo "Starting Shiny Server on port $PORT"
/usr/bin/shiny-server
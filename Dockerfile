
FROM rocker/shiny:latest

RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev

COPY app /srv/shiny-server/
COPY start.sh /start.sh

RUN chmod +x /start.sh

EXPOSE 3838
CMD ["/start.sh"]


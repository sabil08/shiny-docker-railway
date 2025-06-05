
FROM rocker/shiny:latest

RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev

COPY ./app /srv/shiny-server/
RUN chown -R shiny:shiny /srv/shiny-server

EXPOSE 3838
CMD ["/usr/bin/shiny-server"]

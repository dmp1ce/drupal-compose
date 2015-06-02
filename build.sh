#/bin/bash

# TODO: Add a 'pull' option which will download new builds.
# TODO: Add a 'clean' option which will start build from scratch.

# Build named Dockerfiles
# Build php first to get Drupal project
docker build -t php-fpm-drupal -f Dockerfile-php .

# Copy Drupal directory for nginx to use.
CID=$(docker run -d php-fpm-drupal true)
docker cp ${CID}:/srv/http/drupal nginx

# Build nginx 
docker build -t nginx-drupal -f Dockerfile-nginx .

# Build remaining docker-compose containers
source .common.sh
load_environment
docker-compose -f $dc_config_file build

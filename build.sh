#/bin/bash

# Build named Dockerfiles
# Build php first to get Drupal project
docker build -t php-fpm-drupal -f Dockerfile-php .

# Copy Drupal directory for nginx to use.
CID=$(docker run -d php-fpm-drupal true)
docker cp ${CID}:/srv/http/drupal nginx

# TODO: Generate SSL certificates if they don't already exist.

# Build nginx 
docker build -t nginx-drupal -f Dockerfile-nginx .

# Build remaining docker-compose containers
docker-compose build

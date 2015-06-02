#!/bin/bash
/bin/sed -i "s/<php-fpm-ip>/${PHP_1_PORT_9000_TCP_ADDR}/" /etc/nginx/nginx.conf
/bin/sed -i "s/<php-fpm-port>/${PHP_1_PORT_9000_TCP_PORT}/" /etc/nginx/nginx.conf

# Generate SSL certificates if they don't already exist.
if [ ! -e /usr/local/ssl/server.key ]; then
  echo "Generating self signed certificate"
  openssl req \
    -new \
    -newkey rsa:4096 \
    -days 365 \
    -nodes \
    -x509 \
    -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=www.example.com" \
    -keyout /usr/local/ssl/server.key \
    -out /usr/local/ssl/server.crt
fi

echo "Starting nginx"
nginx

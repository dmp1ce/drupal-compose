# Drupal - Docker Compose template

Use this project as a template to start new Drupal projects built on Docker Compose.

## Drupal make

Edit the Drupal make file `drupal.make.yml` to add modules, libraries and themes.

Or add modules, libraries or themes into the `custom_` directories. Note, for custom libraries you'll need to manually add them to the Dockerfile configurations, so it is better to add libraries with the `drupal.make.yml` configuration file.

## Build

To build your project use the `build.sh` script. Simply run `./build.sh`.

## Run

To run the project, which includes nginx, php-fpm and mariadb, use the `up.sh` or `dc.sh` script. `./up.sh` will start the project and you can see the running website at `https://localhost` in your web browser.

## Stop

Use the `dc.sh` script to stop the project. `dc.sh` stands for 'Docker Compose shell script'. Run `./dc.sh stop` to stop the running project. Run `./dc.sh` to see the other options avaible from Docker Compose

## Set Environment

By defualt the project is set to `development`. This can be modified by editing the `.dc_settings.sh` and changing the `environment` variable to `production`.

## Certificates and TLS

TLS certifications are created when the project is built unless you supply your own certificates. These are self signed certificates, so your browser will warn you that they are not trusted. Ignore that warning or add the self signed certificate to the browser.

[This is how to add the certificate in Chrome.](http://stackoverflow.com/questions/7580508/getting-chrome-to-accept-self-signed-localhost-certificate)

Add your own certificate and key in the `nginx/ssl/` directory as `server.key` and `server.crt`.

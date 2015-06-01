#!/bin/bash

source .common.sh
load_environment

# Run Docker Compose with the right docker-compose.yml file.
docker-compose -f $dc_config_file "$@"

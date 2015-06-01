#!/bin/bash

source .common.sh
load_environment

docker-compose -f $dc_config_file run --rm php /bin/bash

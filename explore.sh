#!/bin/bash

# TODO: Need to specify 'dev' or 'production'

docker-compose -f docker-compose-dev.yml run --rm php /bin/bash

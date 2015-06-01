#!/bin/bash
dc_settings_file=".dc_settings.sh"

verify_settings() {
  if [ ! -e $dc_settings_file ]; then
    echo "Creating dc settings file '$dc_settings.file'"
    echo '#!/bin/bash
  environment="development"
  ' >> $dc_settings_file
  fi
}

set_config_file() {
  source $dc_settings_file
  case "$environment" in
    "production")
      dc_config_file=docker-compose-prod.yml
      ;;
    "development")
      dc_config_file=docker-compose-dev.yml
      ;;
    *)
      echo "Please specify valid environment in '$dc_settings_file'"
      exit 1;
      ;;
  esac
}

load_environment () {
  verify_settings
  set_config_file
  echo "Running docker-compose in '$environment' mode."
}

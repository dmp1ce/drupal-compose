The modules will be included in the same location as the 'contrib' modules downloaded by Drush make. The purpose of this directory is to mount new modules from host on the fly. This allows developers to quickly try out new modules without rebuilding the containers and running Drush make.

This directory will not be used on production sites. Any modules that are here, which are needed for production, should be put into the Drush make `drupal.make.yml` configuration.

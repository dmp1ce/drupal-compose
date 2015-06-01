Contrib modules that have been modified go here. Usually this is going be a module we have included using a git submodule which has custom modifications we have applied manually.

An alternative to putting modules here is to use the 'patch' functionality of Drush make. The downside of the Drush make patch route is that a patch needs to be created and maintained. With a git submodule, the changes may be a little easier to keep track of.

This location can also be used to temperarily store development only modules which will be mounted if using the `development` environment. However, contrib modules that have not been modified should not be checked in here but instead added to the `drupal.make.yml` configruation file.

If you move a development module from this location to the `drupal.make.yml` file you will probably need to run `drush rr` to rebuild the registry and find the module in the new location.

#!/bin/bash
echo "Removing stitchfix-env_management"
gem uninstall -aIx stitchfix-env_management
echo "INFO: Gemfile.lock"
rm -rf Gemfile.private.lock
echo "#################################
INFO: Using bundler version 2.3.4
#################################"
time BUNDLE_GEMFILE=Gemfile.private bundle _2.3.4_ install --verbose > output/private-bundle-2.3.4-install.log
echo "INFO: Created installation log file private-bundle-2.3.4-install.log"

echo "Removing stitchfix-env_management"
gem uninstall -aIx stitchfix-env_management
echo "INFO: Gemfile.lock"
rm -rf Gemfile.private.lock
echo "#################################
INFO: Using bundler version 2.3.5
#################################"
time BUNDLE_GEMFILE=Gemfile.private bundle _2.3.5_ install --verbose > output/private-bundle-2.3.5-install.log
echo "INFO: Created installation log file private-bundle-2.3.5-install.log"
echo "TEST END"

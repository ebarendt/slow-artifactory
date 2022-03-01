#!/bin/bash
echo "Removing pry"
gem uninstall -aIx pry
echo "INFO: Gemfile.rubygems.lock"
rm -rf Gemfile.rubygems.lock
echo "#################################
INFO: Using bundler version 2.3.4
#################################"
time BUNDLE_GEMFILE=Gemfile.rubygems bundle _2.3.4_ install --verbose > output/rubygems-bundle-2.3.4-install.log
echo "INFO: Created installation log file rubygems-bundle-2.3.4-install.log"

echo "Removing pry"
gem uninstall -aIx pry
echo "INFO: Gemfile.rubygems.lock"
rm -rf Gemfile.rubygems.lock
echo "#################################
INFO: Using bundler version 2.3.5
#################################"
time BUNDLE_GEMFILE=Gemfile.rubygems bundle _2.3.5_ install --verbose > output/rubygems-bundle-2.3.5-install.log
echo "INFO: Created installation log file rubygems-bundle-2.3.5-install.log"
echo "TEST END"

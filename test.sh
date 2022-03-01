#!/bin/bash
echo "Removing pry"
gem uninstall -aIx pry
echo "INFO: Gemfile.lock"
rm -rf Gemfile.lock
echo "#################################
INFO: Using bundler version 2.3.4
#################################"
time bundle _2.3.4_ install --verbose > output/bundle-2.3.4-install.log
echo "INFO: Created installation log file bundle-2.3.4-install.log"

echo "Removing pry"
gem uninstall -aIx pry
echo "INFO: Gemfile.lock"
rm -rf Gemfile.lock
echo "#################################
INFO: Using bundler version 2.3.5
#################################"
time bundle _2.3.5_ install --verbose > output/bundle-2.3.5-install.log
echo "INFO: Created installation log file bundle-2.3.5-install.log"
echo "TEST END"

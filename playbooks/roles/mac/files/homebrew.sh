#!/bin/bash

# install Xcode
curl -sL -O https://github.com/neonichu/ruby-domain_name/releases/download/v0.5.99999999/domain_name-0.5.99999999.gem
sudo gem install domain_name-0.5.99999999.gem
sudo gem install --conservative xcode-install
sudo rm -f domain_name-0.5.99999999.gem


yes | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
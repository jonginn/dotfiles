#!/bin/bash

if type wp --info > /dev/null 2>&1; then
  echo "WP CLI already installed!"

else

  curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
  chmod +x wp-cli.phar
  sudo mv wp-cli.phar /usr/local/bin/wp

fi

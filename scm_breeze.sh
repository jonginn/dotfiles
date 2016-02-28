#!/bin/bash

if type git_index > /dev/null 2>&1; then
  echo "SCM Breeze already installed\!"

else
  install_to="$HOME/setup"

  mkdir -p "$install_to"

  (
    # Update or clone
    if [ -d "$install_to/scm_breeze" ]; then
      cd "$install_to/scm_breeze" && git pull origin master
    else
      git clone git://github.com/ndbroadbent/scm_breeze.git "$install_to/scm_breeze"
      cd "$install_to/scm_breeze"
    fi

    # Run SCM Breeze install script
    . install.sh
  )
fi

#!/bin/bash

exclude=(".git" ".gitignore" ".config")

function install_config () {
  # $1: config file to move
  config=$1

  # Ask user if they want to use this config file
  read -r -p "Do you want to use $config ? [Y/n] " useconfig
  if [[ $useconfig =~ ^[Yy]$ ]]; then

    # Check if the config already exists
    if [[ -e ~/$config ]]; then
      # If it does, ask the user if they want to back it up
      read -r -p "└╴Do you want to back up the existing $config? [Y/n] " dobackup
      if [[ $dobackup =~ ^[Yy]$ ]]; then
        mv ~/$config ~/$config.bak
      fi
    fi
    echo $config ~/$config
    ln -frs $config ~/$config
  fi
}

# Iterate over all dotfiles of the home directory
for config in .*; do
  # Skip files in the exclude array
  if [[ ! ${exclude[*]} =~ $config ]]; then
    install_config $config
  fi
done

# Iterate over all dotfiles of the config directory
for config in .config/*; do
  install_config $config
done

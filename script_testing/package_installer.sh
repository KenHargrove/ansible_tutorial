#!/bin/bash

# Declade a variable named package and set it equal to htop
package=htop

# Use dnf package manager to install the app that is equal to the variable $package
sudo dnf install $package -y

# Run an if statement to determine if the above command had any exit codes and echo the crafted results
if [ $? -eq 0 ]
then
    echo "The installation of $package was successful."
    echo "The new command is available here:"
    which $package
else
    echo "$package failed to install."
fi

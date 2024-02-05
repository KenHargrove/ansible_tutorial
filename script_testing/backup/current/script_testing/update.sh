#!/bin/bash

release_file=/etc/os-release

    # Script is from Learn Linux TV - Bash Scripting on Linux - Class 08
if grep -q "Arch" $release_file
then
    # The host is bashed on Arch, run the pacman update command
    sudo pacman -Syu
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
    # The host is based on Debian or Ubuntu ( double pipe symbol equals OR )
    # Run the apt version of the command
    sudo apt update
    sudo apt dist-upgrade
fi

if grep -q "Oracle" $release_file
    # The host is based on Fedora
    # Run the dnf version of the command
then
    sudo dnf update -y
    sudo dnf upgrade -y
fi


#!/bin/bash

# Function to install git
install_git() {
    echo "Installing git & needed stuff..."
    sudo apt-get update && sudo apt-upgrade -y
	sudo apt-get install git -y
	sudo apt-get install unzip
    echo "...Installed!"
}
# Function to clone sls intranet repo
clone_repo() {
    echo "Installing SLS Intranet Repo..."
	wget https://raw.githubusercontent.com/slsgaming-net/intranet/main/sh/update-all.sh
	sudo sh update-all.sh
}
# Function to install webmin
install_webmin() {
    sudo sh install-webmin.sh
}

# Function to install BYOND
install_byond() {
	sudo sh install-byond.sh
}

# Function to reboot the server
reboot_server() {
    echo "Rebooting Server..."
    sudo reboot
}

# Display menu options
while true; do
    echo "-----------------------"
	echo "|SLS INTRANET SETUP v1|"
	echo "-----------------------"
    echo "1. Install Git + Tools"
	echo "2. Clone SLS Intranet Repo"
    echo "3. Install Webmin"
    echo "4. Install BYOND"
    echo "5. Reboot Server"
    echo "6. Exit"

    read -p "Enter your choice [1-5]: " choice

    case $choice in
        1)
            install_git
            ;;
        2)
            clone_repo
            ;;
        3)
            install_webmin
            ;;
        4)
            install_byond
            ;;
        5)
            reboot_server
            ;;
        6)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done

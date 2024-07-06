#!/bin/bash

# Function to install git
install_git() {
    echo "Installing git & needed stuff..."
    sudo apt-get update && sudo apt-upgrade -y
	sudo apt-get install git -y
	sudo apt-get install unzip
    echo "...Installed!"
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
    echo "2. Install Webmin"
    echo "3. Install BYOND"
    echo "4. Reboot Server"
    echo "5. Exit"

    read -p "Enter your choice [1-5]: " choice

    case $choice in
        1)
            install_git
            ;;
        2)
            install_webmin
            ;;
        3)
            install_byond
            ;;
        4)
            reboot_server
            ;;
        5)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done

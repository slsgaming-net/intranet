#!/bin/bash

# Function to update the website
update_website() {
    echo "Updating Website..."
	sudo cd /home/itsjusallah
	sudo sh update.sh
    # Add your website update commands here
    echo "Website updated successfully!"
	sleep(3)
	clear
}

# Function to update the server
update_server() {
    echo "Updating Server..."
    sudo apt-get update && sudo apt-get upgrade -y
    echo "Server updated successfully!"
}

# Function to install BYOND
install_byond() {
    echo "Installing BYOND..."
    # Add your BYOND installation commands here
    wget http://www.byond.com/download/build/514/514.1585_byond_linux.zip
    unzip 514.1585_byond_linux.zip
    cd byond
    sudo make install
    echo "BYOND installed successfully.... testing"
	sudo DreamDaemon --version
}

# Function to reboot the server
reboot_server() {
    echo "Rebooting Server in 30 seconds..."
	sleep(30)
    sudo reboot
}

# Display menu options
while true; do
	clear
	echo "------------------------"
	echo "|SLS INTRANET MENU 1.0.1|"
	echo "------------------------"
    echo "Please choose an option..."
    echo "1. Update Website"
    echo "2. Update Server"
    echo "3. Install BYOND"
    echo "4. Reboot Server"
    echo "5. Exit"

    read -p "Enter your choice [1-5]: " choice

    case $choice in
        1)
            update_website
            ;;
        2)
            update_server
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

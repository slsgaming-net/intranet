#!/bin/bash

# Function to update the website
update_website() {
    echo "Updating Website..."
    # Add your website update commands here
    echo "Website updated successfully!"
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
    echo "BYOND installed successfully!"
}

# Function to reboot the server
reboot_server() {
    echo "Rebooting Server..."
    sudo reboot
}

# Display menu options
while true; do
    echo "Please choose an option:"
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

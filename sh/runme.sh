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
    # Fetch the latest version URL dynamically
    LATEST_URL=$(curl -s https://secure.byond.com/download/ | grep -oP 'http://www.byond.com/download/build/[\d.]+/byond_linux.zip' | head -n 1)
    
    if [ -z "$LATEST_URL" ]; then
        echo "Failed to fetch the latest BYOND version URL."
        return 1
    fi

    # Download and install BYOND
    wget $LATEST_URL -O byond_linux.zip
    unzip byond_linux.zip
    cd byond
    sudo make install
    cd ..
    rm -rf byond byond_linux.zip
    echo "BYOND installed successfully!"
}

# Function to install Webmin
install_webmin() {
    echo "Installing Webmin..."
    sudo apt update
    sudo apt install -y software-properties-common apt-transport-https wget
    wget -qO - http://www.webmin.com/jcameron-key.asc | sudo apt-key add -
    sudo add-apt-repository "deb http://download.webmin.com/download/repository sarge contrib"
    sudo apt update
    sudo apt install -y webmin
    echo "Webmin installed successfully!"
}

# Function to install Git
install_git() {
    echo "Installing Git..."
    sudo apt update
    sudo apt install -y git
    echo "Git installed successfully!"
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
    echo "3. Install Git"
    echo "4. Install BYOND"
    echo "5. Install Webmin"
    echo "6. Reboot Server"
    echo "7. Exit"

    read -p "Enter your choice [1-7]: " choice

    case $choice in
        1)
            update_website
            ;;
        2)
            update_server
            ;;
        3)
            install_git
            ;;
        4)
            install_byond
            ;;
        5)
            install_webmin
            ;;
        6)
            reboot_server
            ;;
        7)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done

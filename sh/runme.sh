#!/bin/bash

# Function to display the menu
show_menu() {
	echo "------------------------"
	echo "|SLS INTRANET MENU 1.0.1|"
	echo "------------------------"
    echo "1) Update Website"
    echo "2) Update Server"
	echo "3) Install BYOND (Ubuntu)"
    echo "4) Exit"
}

# Function to update the website
update_website() {
    clear
	echo "Updating website..."
    # Add your website update commands here
	sudo sh update.sh
	clear
    echo "Website updated successfully!"
}

# Function to update the server
update_server() {
    echo "Updating server..."
    # Add your server update commands here
	sudo apt-get update 
	sudo apt-get upgrade -y
	clear
    echo "Server updated successfully!"
}

# Function to install byond on ubuntu
install_byond() {
	install_byond
    echo "Installing byond..."
    # Add your server update commands here
	echo "Insert BYOND install here..."
	clear
    echo "BYOND installed sucessfully... testing version"
	sudo DreamDaemon -version
}

# Main script logic
while true; do
    show_menu
    read -p "Enter your choice: " choice
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
            echo "Exiting..."
            exit 0
			clear
            ;;
        *)
            echo "Invalid choice, please try again."
            ;;
    esac
done

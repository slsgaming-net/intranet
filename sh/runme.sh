#!/bin/bash

# Function to display the menu
show_menu() {
    echo "1) Update Website"
    echo "2) Update Server"
    echo "3) Exit"
}

# Function to update the website
update_website() {
    clear
	echo "Updating website..."
    # Add your website update commands here
	sudo sh update-website.sh
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
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice, please try again."
            ;;
    esac
done

#!/bin/bash

# Function to check if Webmin is installed
check_webmin_installed() {
    if command -v webmin >/dev/null 2>&1; then
        echo "Webmin is installed, aborting!"
    else
        echo "Webmin is not installed, installing..."
		sudo apt-get update && sudo apt-upgrade -y
		sudo curl -o setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh; sudo bash setup-repos.sh
		sudo apt install --install-recommends webmin -y
		sudo systemctl status webmin






    fi

    if systemctl list-units --type=service --all | grep -q "webmin.service"; then
        echo "Webmin service is present."
    else
        echo "Webmin service is not present."
    fi
}

# Call the function
check_webmin_installed


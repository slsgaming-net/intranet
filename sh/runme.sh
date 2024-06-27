#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="SLS Menu"
TITLE="SLS Menu"
MENU="Choose one of the following options:"

OPTIONS=(1 "Update Website"
         2 "Setup BYOND Hosting"
         3 "Exit")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            echo "Updating Website..."
			sudo sh update-website.sh
        2)
            echo "Coming Soon..."
        3)
            esac
esac

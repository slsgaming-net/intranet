#!/bin/bash

items=(1 "Update Website"
       2 "Update SH")

while choice=$(dialog --title "$TITLE" \
                 --menu "Please select" 10 40 3 "${items[@]}" \
                 2>&1 >/dev/tty)
    do
    case $choice in
        1) sudo sh update.sh # some action on 1
        2) echo "lol"
        *) ;; # some action on other
    esac
done
clear # clear after user pressed Cancel
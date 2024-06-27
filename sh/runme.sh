#!/bin/bash
# Bash Menu Script Example

PS3='Please enter your choice: '
options=("Update Website" "Update GitHub" "Option 3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Update Website")
            ./update.sh
            ;;
        "Update GitHub")
            # ./script2.sh
            ;;
        "Option 3")
            # ./script3.sh
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
#!/bin/bash

if [ "$EUID" -ne 0 ]
      then 
            echo "Checking if you are in sudo mode..."
            echo "Error, please insert your password:"
            sudo ls /root
            if [ "$EUID" -ne 0 ]
                then
                    echo -e "\nCould not authenticate the user."
                    echo -e "For security reasons the application will be closed."
                    exit    
            else
            echo thank you.
            wait 2
            fi
    else
    clear
    echo installing packages, please wait.....
    sudo apt -qq install i3
    sudo apt -qq install polybar
    sudo apt -qq install nitrogen
    nitrogen /usr/share/backgrounds
    clear
    echo Thank you. Restarting computer.
    echo Once told, follow the onboard setup for i3.
    sleep 2
    sudo reboot
fi;;

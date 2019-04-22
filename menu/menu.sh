#!/bin/bash
#=============================================================================
#title:         menu.sh
#description:   Menu which allows multiple items to be selected, for Crash's VitaDock image
#author:        Crash
#created:       April 22 2019
#updated:       N/A
#version:       1.0
#usage:         ./menu.sh
#==============================================================================

#IFS=';'

# Welcome
 dialog --backtitle "VITADOCK MENU" --title "The VitaDock Menu Utility" \
    --yesno "\nDo you want to proceed?" \
    28 110 2>&1 > /dev/tty \
    || exit


function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " MAIN MENU " \
            --ok-label OK --cancel-label Exit \
            --menu "What action would you like to perform?" 25 75 20 \
            1 "Connect Wifi" \
            2 "Launch Desktop" \
            3 "Raspi-Config Menu" \
            4 "Quit to Terminal" \
            5 "System Shutdown" \
            6 "System Reboot" \
            2>&1 > /dev/tty)

        case "$choice" in
            1) connect_wifi  ;;
            2) launch_desktop  ;;
            3) raspi_config  ;;
            4) launch_commandline  ;;
            5) system_shutdown  ;;
            6) system_reboot  ;;
            *)  break ;;
        esac
    done
}

######################
# Functions for menu #
######################

function connect_wifi() {
#nmtui
bash /home/pi/scripts/wifi.sh
}

function launch_desktop() {
startx
}

function launch_commandline() {
break
}

function raspi_config() {
sudo raspi-config
}

function system_shutdown() {
sudo shutdown now
}

function system_reboot() {
sudo reboot
}
# Main

main_menu

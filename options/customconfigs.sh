#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			customconfigs.sh
# Author:		Romano Woodfolk
# Created:		February 17, 2020
# Modified:		February 17, 2020 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.3    #
# “Tricia” Cinnamon Edition an ubuntu based distributions.                        #
#=================================================================================#
# Global Variable Definitions
#=================================================================================#
    NAME="Romano Woodfolk"                                        # User's Name
    USERNAME="woodfolk"                                           # username

#=================================================================================#
# Function Definitions                                                            #
#=================================================================================#

#=================================================================================#
# Script Begins Here 											                  			 #
#=================================================================================#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "-------------------------------------------------------------------------"
echo -e "..configuring system settings...                                  "
echo -e "-------------------------------------------------------------------------"

# Multisystem
#---------------------------------------------------------------------------------#
# Configuring MultiSystem
#---------------------------------------------------------------------------------#
# Debian users, after installing multisystem add your $ USER to the adm group.
#
# Adding users to multisystem group
#
echo -e ""; clear; echo -e ""                                     # clear Screen
echo -e "-------------------------------------------------------------------------"
echo -e " Adding multisystem users to the adm group..."
echo -e "-------------------------------------------------------------------------"
sudo / usr / sbin / usermod -a -G adm "$ SUDO_USER"


# VirtualBox
#---------------------------------------------------------------------------------#
#  Configuring VirtualBox                                                         #
#---------------------------------------------------------------------------------#
# Reference the following website(s):
# https://websiteforstudents.com/installing-virtualbox-5-2-ubuntu-17-04-17-10/
#
# Suggested packages:
# VDE is a virtual switch that can connect multiple virtual machines together,
# both local and remote VirtualBox Guest Additions ISO guest additions iso image
# for VirtualBox
# 
# Adding users to vboxusers group
echo -e ""; clear; echo -e ""                                     # clear Screen
echo -e "-------------------------------------------------------------------------"
echo -e " Adding virtualbox users to the vboxusers group..."
echo -e "-------------------------------------------------------------------------"
sudo adduser $USERNAME vboxusers
echo -e ""; clear; echo -e ""                                     # clear Screen
echo -e "-------------------------------------------------------------------------"
echo -e " Done!"
echo -e "-------------------------------------------------------------------------"
sleep 2
echo -e ""; clear; echo -e ""                                     # clear Screen



# Configuring Flatpak for Flathub...
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "Configuring Flatpak for Flathub...                                "
echo -e "------------------------------------------------------------------"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo



# Configuring Git
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Configuring Git...                                               "
echo -e "------------------------------------------------------------------"
git init
git config --global user.name "Romano Woodfolk"
git config --global user.email "woodfolk@gmail.com"
#sudo git config --system core.editor nano
#sudo git config --global core.editor "atom --wait"
sudo git config --system core.editor "gedit --wait --new-window"
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=100000'
git config --global push.default simple

#setting up git
#https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config



echo -e "------------------------------------------------------------------"
echo -e "|          system and application configurations                 |"
echo -e "------------------------------------------------------------------"

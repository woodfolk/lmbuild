#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			custapps.sh
# Author:		Romano Woodfolk
# Created:		February 16, 2020
# Modified:		February 00, 2020 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.3    #
# “Tricia” Cinnamon Edition an ubuntu based distributions.                        #
#=================================================================================#
echo -e "-------------------------------------------------------------------------"
echo -e "::Custom Applications::"
echo -e "-------------------------------------------------------------------------"
#  Install Google Chrome
# Reference the following website(s):
# https://www.linuxbabe.com/ubuntu/install-google-chrome-ubuntu-18-04-lts
#
echo -e "-------------------------------------------------------------------------"
echo -e " Downloading Google Chrome Web Browser..."
echo -e "-------------------------------------------------------------------------"
cd /tmp && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo -e "-------------------------------------------------------------------------"
echo -e " Installing Google Chrome Web Browser..."
echo -e "-------------------------------------------------------------------------"
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f
echo -e "-------------------------------------------------------------------------"
echo -e " Google Chrome installed                      "
echo -e "-------------------------------------------------------------------------"
sleep 2
echo -e ""; clear; echo -e ""														# clear Screen


# OceanAudio
echo -e "-------------------------------------------------------------------------"
echo -e " Installing OceanAudio Editor...                                   "
echo -e "-------------------------------------------------------------------------"
# Downloading OceanAudio
echo -e "-------------------------------------------------------------------------"
echo -e " Downloading OceanAudio...                                         "
echo -e "-------------------------------------------------------------------------"
cd /tmp && wget http://www.ocenaudio.com/downloads/ocenaudio_debian9_64.deb
# Installing OceanAudio
echo -e "-------------------------------------------------------------------------"
echo -e " Installing OceanAudio...                                          "
echo -e "-------------------------------------------------------------------------"
sudo gdebi --n ocenaudio_debian9_64.deb
echo -e "-------------------------------------------------------------------------"
echo -e " OceanAudio Installed "
echo -e "-------------------------------------------------------------------------"
sleep 2
echo -e ""; clear; echo -e ""														# clear Screen

CLEAN UP ***********
# Synology
#  Install Synology Assistant                                                     #
# Reference the following website(s):
# https://www.virtono.com/community/tutorial-how-to/installing-synology-assistant-on-ubuntu/
echo -e "-------------------------------------------------------------------------"
echo -e " Installing Synology Assistant..."
echo -e "-------------------------------------------------------------------------"
echo -e ""


# downloading Synology
echo -e "-------------------------------------------------------------------------"
echo -e " Downloading Synology Assistant..."
echo -e "-------------------------------------------------------------------------"
d /tmp && wget https://global.download.synology.com/download/Tools/Assistant/6.2-23733/Ubuntu/x86_64/synology-assistant_6.2-23733_amd64.deb


# echo "Installing Syn Assist and CloudStation Backup"

# wget -O $tmp_dir/synassistant.deb https://global.download.synology.com/download/Tools/Assistant/6.1-15163/Ubuntu/x86_64/synology-assistant_6.1-15163_amd64.deb

# wget -O $tmp_dir/cloudback.deb https://global.download.synology.com/download/Tools/CloudStationBackup/4.2.6-4408/Ubuntu/Installer/x86_64/synology-cloud-station-backup-4408.x86_64.deb

# dpkg -i $tmp_dir/synassistant.deb

# dpkg -i $tmp_dir/cloudback.deb

# apt-get install -f 


echo -e "-------------------------------------------------------------------------"
echo -e "|             Synology Assistant installed                       |"
echo -e "-------------------------------------------------------------------------"

# Install Synology Assistant
echo -e "-------------------------------------------------------------------------"
echo -e " Installing Synology Assistant..."
echo -e "-------------------------------------------------------------------------"
sudo dpkg -i synology-assistant_6.2-23733_amd64.deb
echo -e "-------------------------------------------------------------------------"
echo -e " Synology Installed "
echo -e "-------------------------------------------------------------------------"
sleep 2
echo -e ""; clear; echo -e ""														# clear Screen
*********** CLEAN UP


#Teamviewer
# Reference the following website(s):
# https://websiteforstudents.com/installing-teamviewer-on-ubuntu-16-04-17-10-18-04/
echo -e "-------------------------------------------------------------------------"
echo -e " Installing Teamviewer..."
echo -e "-------------------------------------------------------------------------"
# downloading teamviewer 15 preview
echo -e "-------------------------------------------------------------------------"
echo -e "..downloading Teamviewer 15 Preview..."
echo -e "-------------------------------------------------------------------------"
echo -e""
cd /tmp && wget https://download.teamviewer.com/download/linux/version_15x/teamviewer_amd64.deb # TeamViewer Preview
# downloading teamviewer
echo -e "-------------------------------------------------------------------------"
echo -e "..downloading Teamviewer 15 stable..."
echo -e "-------------------------------------------------------------------------"
echo -e""
cd /tmp && wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
echo -e""
# Install TeamViewer
echo -e "-------------------------------------------------------------------------"
echo -e "..installing TeamViewer 15..."
echo -e "-------------------------------------------------------------------------"
sudo dpkg -i teamviewer_amd64.deb
sudo apt-get install -f
echo -e "-------------------------------------------------------------------------"
echo -e " TeamViewer installed                           "
echo -e "-------------------------------------------------------------------------"
sleep 2
echo -e ""; clear; echo -e ""														# clear Screen


#Telegram
# https://linuxconfig.org/how-to-install-telegram-on-ubuntu-18-04-bionic-beaver-linux
echo -e "-------------------------------------------------------------------------"
echo -e " Installing Telegram..."
echo -e "-------------------------------------------------------------------------"
cd /tmp && wget -O- https://telegram.org/dl/desktop/linux | sudo tar xJ -C /opt/
sudo ln -s /opt/Telegram/Telegram /usr/local/bin/telegram-desktop
echo -e "-------------------------------------------------------------------------"
echo -e " Telegram Installed		                          "
echo -e "-------------------------------------------------------------------------"
sleep 2
echo -e ""; clear; echo -e ""														# clear Screen



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
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "-------------------------------------------------------------------------"
echo -e "..adding virtualbox users to the vboxusers group..."
echo -e "-------------------------------------------------------------------------"
sudo adduser $USER vboxusers
echo -e ""; clear; echo -e ""													# clear Screen


echo -e "-------------------------------------------------------------------------"
echo -e " Installing XXXXXXXXXX..."
echo -e "------------------------------------------------------------------"


{Code Goes Here}
echo -e "------------------------------------------------------------------"
echo -e "|                                                                |"
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw xyz || sudo apt-get install -y xyz					# xyz
cd /tmp && wget -q 
{Code Goes Here}


echo -e "-------------------------------------------------------------------------"
echo -e "|                                                                |"
echo -e "-------------------------------------------------------------------------"


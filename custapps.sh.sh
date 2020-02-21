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
sleep 2
echo -e ""; clear; echo -e ""														# clear Screen


# Google Chrome
# https://www.linuxbabe.com/ubuntu/install-google-chrome-ubuntu-18-04-lts
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


# Multisystem
echo -e "-------------------------------------------------------------------------"
echo -e " Instaling prerequisite for multisystem...                               "
echo -e "-------------------------------------------------------------------------"
dpkg -l | grep -qw software-properties-common || 
			sudo apt-get install -y software-properties-common          # software-properties-common package
## Install MultiSystem
echo -e "-------------------------------------------------------------------------"
echo -e " Installing multisystem...                                         "
echo -e "-------------------------------------------------------------------------"
dpkg -l | grep -qw multisystem || 
			sudo apt-get install -y multisystem                         # multisystem
echo -e "-------------------------------------------------------------------------"
echo -e " multisystem Installed "
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


#skype
echo -e "-------------------------------------------------------------------------"
echo -e " Installing Skype...                                              "
echo -e "-------------------------------------------------------------------------"
echo -e ""
# enable multiarch for better 64-bit compatibility
echo -e "-------------------------------------------------------------------------"
echo -e " Enabling multiarch for better 64-bit compatibility...           "
echo -e "-------------------------------------------------------------------------"
sudo dpkg --add-architecture i386
# downloading skype
echo -e "-------------------------------------------------------------------------"
echo -e " Downloading skype...                                            "
echo -e "-------------------------------------------------------------------------"
cd /tmp && wget https://repo.skype.com/latest/skypeforlinux-64.deb
# Install Skype
echo -e "-------------------------------------------------------------------------"
echo -e " Installing Skype..."
echo -e "-------------------------------------------------------------------------"
sudo dpkg -i skypeforlinux-64.deb
echo -e "-------------------------------------------------------------------------"
echo -e " Skype installed                            "
echo -e "-------------------------------------------------------------------------"
sleep 2
echo -e ""; clear; echo -e ""														# clear Screen


#Slack
## https://linuxconfig.org/how-to-install-slack-on-ubuntu-18-04-bionic-beaver-linux
#echo -e "-------------------------------------------------------------------------"
#echo -e " Downloading Slack Package                                      "
#echo -e "-------------------------------------------------------------------------"
#cd /tmp && wget -O ~/slack.deb "https://downloads.slack-edge.com/linux_releases/slack-desktop-4.3.2-amd64.deb"
#echo -e "-------------------------------------------------------------------------"
#echo -e " Installing Slack                                               "
#echo -e "-------------------------------------------------------------------------"
#sudo gdebi --n ~/slack.deb
#echo -e "-------------------------------------------------------------------------"
#echo -e " Slack Installed                          "
#echo -e "-------------------------------------------------------------------------"
#sleep 2
#echo -e ""; clear; echo -e ""														# clear Screen


# Synology Assistant                                                     
# https://www.virtono.com/community/tutorial-how-to/installing-synology-assistant-on-ubuntu/
# https://www.synology.com/en-us/support/download/DS1511+#utilities
echo -e "-------------------------------------------------------------------------"
echo -e " Downloading  Synology Assistant..."
echo -e "-------------------------------------------------------------------------"
echo -e ""
cd /tmp && wget https://global.download.synology.com/download/Tools/Assistant/6.2-24922/Ubuntu/x86_64/synology-assistant_6.2-24922_amd64.deb
echo -e "-------------------------------------------------------------------------"
echo -e " Installing Synology Assistant..."
echo -e "-------------------------------------------------------------------------"
sudo dpkg -i synology-assistant_6.2-23733_amd64.deb
echo -e "-------------------------------------------------------------------------"
echo -e " Synology Installed "
echo -e "-------------------------------------------------------------------------"
sleep 2
echo -e ""; clear; echo -e ""														# clear Screen


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


# VMware Workstation 15
# (https://www.linuxbuzz.com/install-vmware-workstation-ubuntu-linuxmint/)
cd /tmp && wget -O ~/vmware.bin https://www.vmware.com/go/getWorkstation-linux
sudo chmod +x vmware.bin
sudo ./vmware.bin


{Code Goes Here}
echo -e "------------------------------------------------------------------"
echo -e "|                                                                |"
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw xyz || sudo apt-get install -y xyz					# xyz
cd /tmp && wget -q 
{Code Goes Here}

sudo apt-get install -f 


echo -e "-------------------------------------------------------------------------"
echo -e "::Custom Applications Complete::                                         "
echo -e "-------------------------------------------------------------------------"


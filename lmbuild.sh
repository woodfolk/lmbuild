#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			lmbuild.sh
# Author:		Romano Woodfolk
# Created:		February 16, 2020
# Modified:		February 25, 2020 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.3    #
# “Tricia” Cinnamon Edition an ubuntu based distributions.                        #
#---------------------------------------------------------------------------------#
#
# System requirements:
#		1 GB RAM (2GB recommended for a comfortable usage).
#		15 GB of disk space (20GB recommended).
#		1024×768 resolution (on lower resolutions, press ALT to drag windows with
#                          the mouse if they don’t fit in the screen).
#
# This script was designed for Linux Mint 19.3 “Tricia” Cinnamon Edition and can
# be modified to support Debian and/or Debian-based distributions.
#
#---------------------------------------------------------------------------------#
# This script calls sub-scripts that will install applications under the following
# catagories.
#
#        Accessories:         *Anon Surf:          Chrome Apps:
#        Educatin:            *Electronics:        Games:
#     	Graphics:            *Hamradio:           Internet:
#        Office:              Programming:         Sound & Video:
#        *System Tools:       *Universal Access:   *Virtualization:
#
#=================================================================================#
# Global Variable Definitions
#=================================================================================#
    NOW=`date +%Y%m%d%H%M%S`                    # Current Date & Time Suffix
    LOGFILE=instlog$NOW.log                     # Script Log File
    ERRORFILE=errlog$NOW.log                    # Error Log File
    NAME=""                                     # User's Name
    USERNAME=""                                 # username
# colors
    NORMAL=`echo "\033[m"`                      # ${NORMAL}
    BLUE=`echo "\033[36m"`                      # blue ${NORMAL}
    YELLOW=`echo "\033[33m"`                    # yellow ${NORMAL}
    FGRED=`echo "\033[41m"`                     # red ${FGRED}
    RED_TEXT=`echo "\033[31m"`                  # ${RED_TEXT}
    ENTER_LINE=`echo "\033[33m"`                # ${COLOR}
    COLOR='\033[01;31m'                         # bold red ${NORMAL}
    RESET='\033[00;00m'                         # normal white ${RESET}

#=================================================================================#
# Function Definitions                                                            #
#=================================================================================#

#=================================================================================#
# Script Begins Here 											                  			 #
#=================================================================================#
echo -e ""; clear; echo -e ""                                        # clear Screen
echo -e "Git is require by this script. run ${FGRED}sudo apt-get install -yq git${NORMAL} before running"
echo -e "running this script..."
echo -e "Elevated rights are needed to run this script"
sleep 3
echo -e ""; clear; echo -e ""                                        # clear Screen

if [ $USER != 'root' ]
then
	echo -e "${FGRED}YOU ARE NOT root...${NORMAL} This script REQUIRES root access"
	echo -e ""
	echo -e "Please run ${MENU}sudo ./master-install.sh${NORMAL} "
	exit 0
else
	echo -e ""; clear; echo -e ""                                     # clear Screen
	echo -e "Your are root or have issued ${MENU}sudo${NORMAL} to run this script...  "
	echo -e ""
	echo -e ""
	echo -e "Let's began building your new system..."
	echo -e ""
	echo -e ""
	echo -e "You will not be prompted to enter Elevated Rights to continue running this script"
	echo -e ""
	echo -e ""
	echo -e "Feel free to modified this script in any way that you feel to fit your needs"
	echo -e ""
	echo -e ""
	echo -e "Now enjoy the ride"
	sleep 3
	echo -e ""; clear; echo -e ""                                     # clear Screen
fi

echo -e "---------------------------------------------------------------------------------"
echo -e " Creating Log files..."
echo -e "---------------------------------------------------------------------------------"
touch $LOGFILE $ERRORFILE
exec 2> $ERRORFILE
exec > >(tee -i -a $LOGFILE)
echo -e "---------------------------------------------------------------------------------"
echo -e " Log files created..."
echo -e "---------------------------------------------------------------------------------"
sleep 2
echo -e ""; clear; echo -e ""                                        # clear Screen

echo -e "---------------------------------------------------------------------------------"
echo -e " Replacing your .bashrc file with a custom .bashrc file from ParrotSec OS...     "
echo -e "---------------------------------------------------------------------------------"
mv ~/.bashrc bashrc.old
cp bashrc ~/.bashrc
sleep 3
echo -e ""; clear; echo -e ""                                        # clear Screen

echo -e "---------------------------------------------------------------------------------"
echo -e " Replacing the default cinnamon settings file with my_cinnamon_settings file "
echo -e "---------------------------------------------------------------------------------"
echo -e "\n \n \n"
echo -e "${BLUE}#=================================================================================#${NORMAL}"
echo -e "${BLUE}# Backing up and restoring your cinnamon settings (dconf)${NORMAL}"
echo -e "${BLUE}# https://github.com/linuxmint/Cinnamon/wiki/Backing-up-and-restoring-your-cinnamon-settings-(dconf)${NORMAL}"
echo -e "${BLUE}# To backup from a terminal run:${NORMAL}"
echo -e "${BLUE}#"${NORMAL}
echo -e "${BLUE}# ${YELLOW}dconf dump /org/cinnamon/ > backup_of_my_cinnamon_settings${BLUE}"
echo -e "${BLUE}#${NORMAL}"
echo -e "${BLUE}# save the backup_of_my_cinnamon_settings file somewhere for later${NORMAL}"
echo -e "${BLUE}#${NORMAL}"
echo -e "${BLUE}# To ${FGRED}reset${BLUE} to defaults:${NORMAL}"
echo -e "${BLUE}#${NORMAL}"
echo -e "${BLUE}# ${YELLOW}dconf reset -f /org/cinnamon/${BLUE}"
echo -e "${BLUE}#${NORMAL}"
echo -e "${BLUE}# Note, cinnamon may freeze or crash doing this to restore all your settings:${NORMAL}"
echo -e "${BLUE}#${NORMAL}"
echo -e "${BLUE}# ${YELLOW}dconf load /org/cinnamon/ < backup_of_my_cinnamon_settings${BLUE}"
echo -e "${BLUE}#${NORMAL}"
echo -e "${BLUE}# Cinnamon may freeze/crash after this (recommend at least logging out/back in)${NORMAL}"
echo -e "${BLUE}#=================================================================================#${NORMAL}"
echo -e "coping my_cinnamon_settings file to $HOME "
cp my_cinnamon_settings ~/my_cinnamon_settings
echo -e "changing file access on my_cinnamon_settings"
chown $USER:$USER ~/my_cinnamon_settings 
chmod 755 ~/my_cinnamon_settings
echo -e " Backing up dault cinnamon settings"
dconf dump /org/cinnamon/ > backup_of_my_cinnamon_settings
echo -e " Setting custom cinnamon settings from the ${YELLOW}my_cinnamon_settings${NORMAL} file "
dconf load /org/cinnamon/ < ~/my_cinnamon_settings
sleep 2
echo -e ""; clear; echo -e ""                                        # clear Screen

echo -e "---------------------------------------------------------------------------------"
echo -e " Updating the repository database..."
echo -e "---------------------------------------------------------------------------------"
sudo apt-get -f install -y
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get full-upgrade -y && sudo apt-get dist-upgrade -y
sudo apt-get -f install -y && sudo apt-get autoremove
echo -e ""; clear; echo -e ""                                        # clear Screen

echo -e "---------------------------------------------------------------------------------"
echo -e " Install Prerequisites                                          "
echo -e "---------------------------------------------------------------------------------"
dpkg -l | grep -qw gdebi-core || sudo apt-get install -y gdebi-core  # gdebi-core
dpkg -l | grep -qw wget || sudo apt-get install -y wget              # wget
echo -e ""; clear; echo -e ""                                        # clear Screen

echo -e ""
echo -e "---------------------------------------------------------------------------------"
echo -e "            ****** Welcome to the Finish Build Script ******                     "
echo -e "---------------------------------------------------------------------------------"
echo -e ""
echo -e " Audio and Video"
echo -e " Communication and News"
echo -e " Productivity (Office)"
echo -e " Games"
echo -e " Graphics and Photography (GRAPHICS)"
echo -e " Add-ons"
echo -e " Developer Tools (PROGRAMMING)"
echo -e " Education and Science (Education/Science)"
echo -e " Utilities (System Tools/Accessories)"
echo -e ""
echo -e "---------------------------------------------------------------------------------"
echo -e ""
sleep 3
echo -e ""; clear; echo -e ""

echo -e "---------------------------------------------------------------------------------"
echo -e " Adding need PPAs/Repositories - Main lmbuild.sh script calling addrepos.sh"
echo -e "---------------------------------------------------------------------------------"
sh addrepos.sh

echo -e "---------------------------------------------------------------------------------"
echo -e " Updating the repository database..."
echo -e "---------------------------------------------------------------------------------"
sudo apt-get update -y
echo -e ""; clear; echo -e ""                                        # clear Screen

echo -e "---------------------------------------------------------------------------------"
echo -e " Core Applications & Utilities - Main lmbuild.sh script calling addapps.sh"
echo -e "---------------------------------------------------------------------------------"
sh addapps.sh

echo -e "---------------------------------------------------------------------------------"
echo -e " GStreamer & DVD Plugins  - Main lmbuild.sh script calling gstreamer-plugins.sh"
echo -e "---------------------------------------------------------------------------------"
sh gstreamer-plugins.sh

echo -e "---------------------------------------------------------------------------------"
echo -e " Custom Applications & Configurations - Main lmbuild.sh script calling custapps.sh"
echo -e "---------------------------------------------------------------------------------"
sh custapps.sh

# A list of software packages & utilities installed are listed in the readme.md file.
echo -e ""; clear; echo -e ""                                        # clear Screen
echo -e "---------------------------------------------------------------------------------"
echo -e " Finishing up..."
echo -e "---------------------------------------------------------------------------------"
sleep 3

echo -e "---------------------------------------------------------------------------------"
echo -e " Updating the repository database..."
echo -e "---------------------------------------------------------------------------------"
sudo apt-get install -f
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get full-upgrade -y && sudo apt-get dist-upgrade -y
sudo apt-get -f install -y && sudo apt-get autoremove
echo -e ""; clear; echo -e ""                                        # clear Screen

echo -e ""; clear; echo -e ""                                        # clear Screen
echo -e "Flatpak for Flathub, Git, MultiSystem and VirtualBox all need to be configured before"
echo -e "using those apps or services. Would you like to configure your applications now? "
read A
if [[ "$A" == "Y"  ||  "$A" == "y"||  "$A" == "Yes" ||  "$A" == "yes"  ]] ;
   then
      echo -e ""; clear; echo -e ""                                        # clear Screen
      echo -e "---------------------------------------------------------------------------------"
      echo -e " Preparing to configuring custom system settings...                              "
      echo -e "---------------------------------------------------------------------------------"
      sleep 2
      echo -e ""; clear; echo -e ""
      sh customconfigs.sh
   else
      echo -e ""; clear; echo -e ""                                        # clear Screen
      echo -e " You can run the customconfigs.sh at anytime. It is recommended that you edit the script"
      echo -e " with your own custom settings before running this the script. "
fi
sleep 2
echo -e ""; clear; echo -e ""                                        # clear Screen

echo -e "---------------------------------------------------------------------------------"
echo -e " Setting Preset Cinnamon Settings...      "
echo -e "---------------------------------------------------------------------------------"
# Backing up and restoring your cinnamon settings
# (dconf)
# https://github.com/linuxmint/Cinnamon/wiki/Backing-up-and-restoring-your-cinnamon-settings-(dconf)
# To backup:
# From a terminal, run:
#
# dconf dump /org/cinnamon/ > backup_of_my_cinnamon_settings
#
# save the backup_of_my_cinnamon_settings file somewhere for later
# To reset to defaults:
#
# dconf reset -f /org/cinnamon/
#
# Note, cinnamon may freeze or crash doing this
# To restore all your settings:
#
# dconf load /org/cinnamon/ < backup_of_my_cinnamon_settings
#
# Cinnamon may freeze crash after this (recommend at least logging out/back in)
echo -e "---------------------------------------------------------------------------------"
echo -e " Installs complete...."
echo -e "---------------------------------------------------------------------------------"
sleep 2
echo -e ""; clear; echo -e ""
exit
#=================================================================================#
# End Of Script       											                  			 #
#=================================================================================#
#dpkg -l | grep -qw xyz || sudo apt-get install -y xyz               # xyz
#cd /tmp && wget -q


#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			gstreamer-plugins.sh
# Author:		Romano Woodfolk
# Created:		February 16, 2020
# Modified:		February 16, 2020 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.3    #
# “Tricia” Cinnamon Edition an ubuntu based distributions.                        #
#---------------------------------------------------------------------------------#
#
echo -e ""; clear; echo "";
echo -e "------------------------------------------------------------------"
echo -e "..installing GStreamer plugins and libraries..."
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw frei0r-plugins || 
			sudo apt-get install -y frei0r-plugins								# frei0r-plugins
dpkg -l | grep -qw libgstreamer1.0-0 ||
			sudo apt-get install -y libgstreamer1.0-0 						# GStreamer library
dpkg -l | grep -qw gstreamer1.0-plugins-base ||
			sudo apt-get install -y gstreamer1.0-plugins-base				# GStreamer plugins from the "base" set
dpkg -l | grep -qw gstreamer1.0-plugins-good ||
			sudo apt-get install -y gstreamer1.0-plugins-good				# GStreamer plugins from the "good" set
dpkg -l | grep -qw gstreamer1.0-plugins-bad ||
			sudo apt-get install -y gstreamer1.0-plugins-bad		   	# GStreamer plugins from the "bad" set
dpkg -l | grep -qw gstreamer1.0-plugins-ugly ||
			sudo apt-get install -y gstreamer1.0-plugins-ugly				# GStreamer plugins from the "ugly" set
dpkg -l | grep -qw gstreamer1.0-libav ||
			sudo apt-get install -y gstreamer1.0-libav						# libav plugin for GStreamer"
dpkg -l | grep -qw gstreamer1.0-gtk3 ||
			sudo apt-get install -y gstreamer1.0-gtk3 						# GStreamer plugin for GTK+3
dpkg -l | grep -qw gstreamer1.0-\x ||
			sudo apt-get install -y gstreamer1.0-\x							# GStreamer plugins for X11 and Pango
#dpkg -l | grep -qw gstreamer1.0-pulseaudio ||
#			sudo apt-get install -y gstreamer1.0-pulseaudio				   # GStreamer plugin for PulseAudio
dpkg -l | grep -qw gstreamer1.0-gl ||
			sudo apt-get install -y gstreamer1.0-gl							# GStreamer plugins for GL
dpkg -l | grep -qw gstreamer1.0-alsa ||
			sudo apt-get install -y gstreamer1.0-alsa							# GStreamer plugin for ALSA
dpkg -l | grep -qw gstreamer1.0-doc ||
			sudo apt-get install -y gstreamer1.0-doc 							# GStreamer documentation
dpkg -l | grep -qw gstreamer1.0-tools ||
			sudo apt-get install -y gstreamer1.0-tools						# GStreamer tools
dpkg -l | grep -qw libavcodec-extra ||
			sudo apt-get install -y libavcodec-extra   						# Enable DVD And Copy-Right Videos Support
dpkg -l | grep -qw libavcodec-extra57  ||
			sudo apt-get install -y libavcodec-extra57						# Enable DVD And Copy-Right Videos Support
#dpkg -l | grep -qw ubuntu-restricted-extras ||
#			sudo apt-get install -y ubuntu-restricted-extras 				# Enable DVD And Copy-Right Videos Support
dpkg -l | grep -qw libdvdnav4 ||
			sudo apt-get install -y libdvdnav4 									# Enable DVD And Copy-Right Videos Support
dpkg -l | grep -qw libdvdread4 ||
			sudo apt-get install -y libdvdread4 								# libdvdread4
#dpkg -l | grep -qw libdvdcss2 ||
#			sudo apt-get install -y libdvdcss2									# libdvdcss2
echo -e "------------------------------------------------------------------"
echo -e "| GStreamer plugins and libraries installed                      |"
echo -e "------------------------------------------------------------------"


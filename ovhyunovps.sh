#!/bin/sh

# Welcome to the YUNOHOST INSTALL TOOL FOR OVHCLOUD VPS SERVERS ONLY and on DEBIAN 12
# (THIS IS NOT FOR DEDICATED SERVERS ON OVH, NOR FOR OTHER HOSTS)
# Made by Sean Campbell from Chat Safe Media, and it is used for a
# Sean's Tech Talk HOW TO Video available on YouTube and CSPTube
# This combines the three things that usually take a long time to type!
# PLEASE RUN AS ROOT ONLY
# REBOOT.
# PLEASE RUN THIS SCRIPT ON A TEST MACHINE BEFORE USING THIS ON A PRODUCTION SERVER
# IF YOU WANT TO RUN A SCRIPT FOR OTHER VPS HOSTS, PLEASE ASK FOR A
# SCRIPT BY EMAILING SEAN@SEANSTECHTALK.COM

# updating repos for debian 12 ONLY
apt update


# FROM THIS POINT ON THE FOLLOWING IS AUTOMATED AND WILL REBOOT AUTOMATICALLY
# PLEASE WAIT UP TO 5 MINUTES BEFORE ACCESSING SSH AGAIN

# installing the programs needed for yunohost, plus build tools
apt -y install ca-certificates gnupg build-essential curl wget apt-transport-https nano nodejs npm

# INSTALLING VTOP
npm install -g vtop

#upgrading and installing Y U NO Host
apt -y upgrade && curl https://install.yunohost.org | bash

# NOW REBOOTING, REMOVING OLD KERNEL PACKAGES AND OLD GRUB ENTRIES
apt -y autoremove && reboot

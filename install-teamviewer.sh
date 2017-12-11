#!/bin/bash
set -e
###################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


# use mirror if you have a slow connection

makepkg -si
sudo systemctl enable teamviewerd
sudo systemctl start teamviewerd
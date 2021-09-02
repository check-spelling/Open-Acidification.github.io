#!/usr/bin/env bash
# Purpose: batch image resizer
# Source: https://guides.wp-bullet.com/batch-resize-images-using-linux-command-line-and-imagemagick/
# Author: Mike
# Modified to match projects needs and settings.

# Requires imagemagick (commented out install commands)
# sudo apt-get update
# sudo apt-get install imagemagick -y

# relative repo path to image folder
FOLDER="assets/images"

# max width
WIDTH=800

# resize jpg only to width, keeps proportions using imagemagick
find ${FOLDER} -iname '*.jpg' -exec convert \{} -verbose -resize $WIDTH\> \{} \;

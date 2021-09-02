#!/usr/bin/env bash
# Purpose: batch image resizer
# Source: https://guides.wp-bullet.com/batch-resize-images-using-linux-command-line-and-imagemagick/
# Author: Mike

# Requires imagemagick
#
# sudo apt-get update
# sudo apt-get install imagemagick -y

# absolute path to image folder
FOLDER="assets/images"

# max width
WIDTH=800

# max height
#HEIGHT=800

#resize png or jpg to either height or width, keeps proportions using imagemagick
#find ${FOLDER} -iname '*.jpg' -o -iname '*.png' -exec convert \{} -verbose -resize $WIDTHx$HEIGHT\> \{} \;

#resize png to either height or width, keeps proportions using imagemagick
#find ${FOLDER} -iname '*.png' -exec convert \{} -verbose -resize $WIDTHx$HEIGHT\> \{} \;

#resize jpg only to either height or width, keeps proportions using imagemagick
find ${FOLDER} -iname '*.jpg' -exec convert \{} -verbose -resize $WIDTH\> \{} \;

# alternative
#mogrify -path ${FOLDER} -resize ${WIDTH}x${HEIGHT}% *.png -verbose
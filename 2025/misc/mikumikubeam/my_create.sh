#!/bin/sh
rm -rf build
mkdir build
flag=`cat flag.txt`

offset="+243+987"
msgsize="192x115"

# create the message gif
magick -gravity center -size $msgsize label:"Congrats\n$flag" build/message.gif
# magick -gravity center -size 200x100 label:"Congrats\n$flag" build/message.png
magick identify build/message.gif

# create steg image
magick composite build/message.gif mikumikubeam.png -stegano $offset build/mikumikusteg.png

# calculate difference
magick compare -metric PAE mikumikubeam.png build/mikumikusteg.png build/difference.png

cp build/mikumikusteg.png .


# do decryption
# magick -size $msgsize$offset stegano:build/mikumikusteg.png recovered.gif
# magick -size "125x125+240+0" stegano:build/mikumikusteg.png recovered.gif
# magick -size "200x95+240+0" stegano:build/mikumikusteg.png recovered.gif
# magick -size "50x50+239+0" stegano:build/mikumikusteg.png recovered.gif

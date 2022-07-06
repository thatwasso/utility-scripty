#! /bin/bash
mogrify -format jpg /home/debuser/Immagini/*.png;
rm /home/debuser/Immagini/*.png;
mogrify -resize 40% /home/debuser/Immagini/*.jpg;
exiftool -overwrite_original -all=/home/debuser/Immagini/*;

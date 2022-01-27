#! /bin/bash
read -p "Extension (jpg/png)" reply

choice=$(echo $reply|sed 's/(.*)/L1/')

if [ "$choice" = 'png' ]
then
  echo "You selected PNG";
  sleep 3;
  mogrify -resize 40% /home/debuser/Immagini/*.png;
  exiftool -overwrite_original -all=/home/debuser/Immagini/*;

elif [ "$choice" = 'jpg'  ]
then

  echo "You selected JPG";
  sleep 3;
  mogrify -resize 40% /home/debuser/Immagini/*.png;
  exiftool -overwrite_original -all=/home/debuser/Immagini/*;
else
echo "invalid answer, type jpg/png";
fi

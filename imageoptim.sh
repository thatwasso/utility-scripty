#! /bin/bash
read -p "Extension (jpg/png)" reply

choice=$(echo $reply|sed 's/(.*)/L1/')

if [ "$choice" = 'png' ]
then
  echo "You selected PNG";
  sleep 3;
  mogrify -resize 40% /PATH/TO/FOLDER/*.png;
  exiftool -overwrite_original -all=/PATH/TO/FOLDER/*;

elif [ "$choice" = 'jpg'  ]
then

  echo "You selected JPG";
  sleep 3;
  mogrify -resize 40% /PATH/TO/FOLDER/*.png;
  exiftool -overwrite_original -all=/PATH/TO/FOLDER/*;
else
echo "invalid answer, type jpg/png";
fi

#!/bin/bash
#To convert a directory of .m4a to mp3 in a new directory:
#Meant to be run in the .m4a directory and output in All/converted

input="$PWD"
read -p "Enter destination playlist: " playname
output="/home/luca/Music/All/converted/${playname}" #get out directory

echo "creating: ${output}"
mkdir "$output"

#ffmpeg -i "$input/*.m4a" "$output/*.mp3"

for i in *.m4a;
  do name=`echo "$i" | cut -d'.' -f1`
  echo "$name"
  echo "${output}/${name}.mp3"
  ffmpeg -i "$i" "${output}/${name}.mp3"
done


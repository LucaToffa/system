#!/bin/bash
#To convert a directory of .opus in .m4a

input=${PWD}/opus/

echo $input
#ffmpeg -i "$input/*.m4a" "$output/*.mp3"

for i in opus/*.opus;
  do name=`echo "$i" | cut -d'.' -f1`
  echo "$name"
  echo "${PWD}/${name}.m4a"
  ffmpeg -i "$i" "${PWD}/${name}.m4a"
done


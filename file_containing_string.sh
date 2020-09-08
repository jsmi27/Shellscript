# shell script to print names of all the files in a given folder in the file system - if file content contains the given string
# exceute 'pwd' and then -> sh file_containing_string.sh <folder> <string>
#!/bin/sh
folder="$1"
string="$2"
#echo "finding occurance of string $(tput bold)$2$(tput sgr0) in folder $1"
echo "listing all files in folder $1"
for files in "$folder"/*
do
  echo "$files"
done
echo "listing occurance of string $2 in files with line number"
grep -Rni "$string" "$folder"/*.txt
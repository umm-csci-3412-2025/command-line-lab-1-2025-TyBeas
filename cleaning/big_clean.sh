#!/usr/bin/env bats

#Set the variable t_file to the name of the file that will be tested and passed to script
tar_file=$1

#Make a temporary directory to store the files
TempDir=$(mktemp --directory)

#Uncompress the file to the temporary directory
tar zxf "$t_file" --directory "$TempDir"

#Go through all the files in the temporary directory and check if they contain the string "DELETE ME!"
grep -lr "DELETE ME!" "$TempDir" | xargs rm

#cd to the temporary directory or exit
cd "$TempDir" || exit

#Gets the name of the directory that was passed to the script and removes the .tgz extension
DirName=$(basename "$t_file" .tgz)

#Compress the file that has the name stored in file_name and save to a file called cleaned_*value stored in file_name*  and put that file in our old working directory
tar -czf "cleaned_$t_file" "$DirName"

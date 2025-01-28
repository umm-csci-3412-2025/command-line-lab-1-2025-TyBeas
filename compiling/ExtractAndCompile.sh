#!/usr/bin/env bash
#INT is the value of the argument passed to the script
INT=$1

#This line will tell tar to extract the files from the archive NthPrime.tgz
tar -xzf NthPrime.tgz

#Go into the NthPrime directory created by the tar command
cd NthPrime || exit

#Compile and combine the files into an executable called NthPrime
gcc -o NthPrime cmain cNthPrime

#Call the NthPrime executable with the argument passed to the script
./NthPrime "$INT"

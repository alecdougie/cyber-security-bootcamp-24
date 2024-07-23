#!/bin/bash

#------------

# This script specifically will echo the roulette dealer name based on an input of the date & time in the terminal.

#------------


# Arguements use within this command

date=$1 # Selects date value to insert into grep command (placing it in front of the default file name), syntax should be 0000

hour=$2 # Selects hour to insert into grep command, syntax should be 00:00:00

ampm=$3 # Selects AM/PM value to insert into grep command, syntax should be AM or PM


# Initial echo statement for clarity

echo "Running command..."
sleep 1


# Adding new line + date and time titles from given arguments to output file

echo "\n" 
echo "Date: $date"
echo "Time: $hour $ampm"


# Input of arguments and output of results (dealer names)

grep -i "$hour $ampm" ${date}_Dealer_schedule.txt | awk -F'\t' '{print "Dealer: " $3}'


# Results are sent to active terminal where shell script was run and are not saved to a file (please use "Roulette_Dealer_Append_Script.sh" to save to file).

#!/bin/bash

#------------

# This script specifically appends the roulette dealer name to a chosen file based on an input of the date & time.

#------------


# Arguements use within this command

date=$1 # Selects date value to insert into grep command (placing it in front of the default file name), syntax should be 0000

hour=$2 # Selects hour to insert into grep command, syntax should be 00:00:00

ampm=$3 # Selects AM/PM value to insert into grep command, syntax should be AM or PM

output=$4 # The given file you want to append to (or create), syntax should be filename.txt



# Initial echo statement for clarity

echo "Running command..."
sleep 1


# Adding new line + date and time titles from given arguments to output file

echo "\n" >> $output
echo "Date: $date" >> $output
echo "Time: $hour $ampm" >> $output


# Input of arguments and output of results (dealer names)

grep -i "$hour $ampm" ${date}_Dealer_schedule.txt | awk -F'\t' '{print "Dealer: " $3}' >> $output


# Ending echo statement for clarity

echo "Command complete, displaying results of $output"
sleep 1


# Print the most recent data of selected output file for user confirmation or debugging

tail -4 $output

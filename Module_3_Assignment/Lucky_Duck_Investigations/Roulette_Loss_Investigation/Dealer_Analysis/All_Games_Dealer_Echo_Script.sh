#!/bin/bash

#------------

# This script DOES NOT specify dealers or games, but rather displays all games and dealer names associated based on an input of the date & time.

#------------


# Agurments use within this command

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

grep -i "$hour $ampm" ${date}_Dealer_schedule.txt | awk -F'\t' '{print "BlackJack Dealer: " $2 "\n" "Routlette Dealer: " $3 "\n" "Texas Hold EM Dealer: " $4}'


# Results are sent to active terminal where shell script was run and are not saved to a file.

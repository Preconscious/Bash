#!/bin/bash
# Bash Timer Script
START=$(date +%s)
echo 'Timer has Started...'
 
while 1; 
do
   TIMENOW=$(date +%s)
   let DIFF=$(($TIMENOW - $START))
   let MINS=$(($DIFF / 60))
   let SECS=$(($DIFF % 60))
   let HOURS=$(($DIFF / 3600))
   printf "\r%3d Days, %02d:%02d:%02d" $DAYS $HOURS $MINS $SECS
done
echo 'Press CTRL-C to STOP.'

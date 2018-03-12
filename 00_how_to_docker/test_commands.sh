#!/bin/sh
# Tests each command written in file

PAUSE=$1

if [ -z $1 ]
then
   PAUSE=5
fi   

for task in *;
do
	if [ $task != "test.sh" ]
	then
		ESC="\\033["
		echo $ESC"96mFile #$task"$ESC"0m";
		echo $ESC"36mContents:"$ESC"0m" | cat - $task && echo;
		echo $ESC"36mRun this command:"$ESC"0m";
		sh $task;
		echo $ESC"36mGoing to pause for $PAUSE seconds"
		sleep $PAUSE;
	fi;
done

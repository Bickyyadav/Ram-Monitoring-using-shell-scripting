#!/bin/bash


#monitoring the free fs space disk 

#df-H to see the file space mootring 
#to delete we use egrep command and to take line we use 
#df -H | egrep -v "filesystem to remaove|another file to remove" | grep " sda2"
#to det one item we use awk command ---- df -H | egrep -v "Filesystem|tmpfs" | grep "sda2"| awk '{print $5}'
#to delete percetage sign we use tr -d %
#s - is for subject 

Fileutlization=$(df -H | egrep -v "Filesystem|tmpfs" | grep "sda2"| awk '{print $5}'| tr -d %) 

TO="vy9000991@gmail.com"

if [[ $Fileutlization -ge 18 ]]
then 
	echo " warning, disk, space is low!- $Fileutlization % "|  mail -s "Disk ALert message percentage of disk $Fileutlization " $TO
else 
	echo " all god " 
fi 











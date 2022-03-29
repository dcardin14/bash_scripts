#!/bin/bash

# I put my 'reads' in loops to make sure they're not nulled.

#----------------------------------------------------------------------------------
while : ; do
        read -p "Enter the directories or files for backup: " BACKUPFILES
        [[ $BACKUPFILES == "" ]] || break #leave loop only after input
done
#------------------------------------------------------------------------------------
while : ; do
        read -p "What do you want to name the file:  "  BACKUPNAME
        [[ $BACKUPNAME == "" ]] || break  #leave loop only after input 
done
#------------------------------------------------------------------------------------
while : ; do
        read -p "Where do you want to backup the file " BACKUPLOCATION
        [[ $BACKUPLOCATION == "" ]] || break #leave loop only after input
done
#------------------------------------------------------------------------------------
#  For sure the user failed to put the file extension on so I will put it on myself
BACKUPNAME="${BACKUPNAME}.tar"
echo $BACKUPNAME

tar -cvf ${BACKUPLOCATION}/$BACKUPNAME --exclude='${BACKUPNAME}' ${BACKUPFILES}



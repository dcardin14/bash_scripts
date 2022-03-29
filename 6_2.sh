#!/bin/bash

# Can't run this script without supplying 3 parameters.
if [ $# -ne 3 ]
   then
     echo
     echo "Greetings, l_user!  It appears that you didn't RTFM." 
     echo
     echo "To run this script, you will need three (3) parameters as follows:"
     echo
     echo "[BACKUPFILES] [BACKUPNAME] [BACKUPLOCATION]"
     echo
     echo
     exit
fi

# Use the parameters that were passed in to populate my variables
BACKUPFILES=$1
BACKUPNAME=$2
BACKUPLOCATION=$3

BACKUPNAME="${BACKUPNAME}.tar"

tar -cvf ${BACKUPLOCATION}/$BACKUPNAME --exclude='${BACKUPNAME}' ${BACKUPFILES}
echo "Successfully created the archive ${BACKUPLOCATION}/${BACKUPNAME}"


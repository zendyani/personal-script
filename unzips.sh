#!/bin/bash
echo "Unziping multiple zip file"
echo """
For each zip file on directory do
get name
create foldor with this name
copy zip file with corresponding folder inside it
unzip it inside the folder
remove the ziped file than was been copied
"""

files=$(/bin/ls *.zip)
ECHO=/usr/bin/echo
SED=/usr/bin/sed
MKDIR=/usr/bin/mkdir
CP=/usr/bin/cp
CD=/usr/bin/cd
UNZIP=/usr/bin/unzip
RM=/usr/bin/rm


for z in $files 
do
    name=$($ECHO $z | $SED s/.zip//i);
    $ECHO unzip $name;
    mkdir $name && cp $z $name && cd $name && unzip $z && rm $z && cd ..;
    #$MKDIR $name && $CP $z $name && $CD $name && $UNZIP $z && $RM $z && $CD ..;
done;

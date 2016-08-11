#!/bin/bash

#ADMIN='matthewcain'

#if [ $USER = $ADMIN ]
#then
#				echo "No need to delete files Logout"
#fi

for x in /Users/*
do
				if [ $x = '/Users/mattcain' ] || [ $x = '/Users/Shared' ]
				then	
								echo "Skipping Folder $x"
				else
								rm -R $x
								dscl . -delete $x
				fi
done

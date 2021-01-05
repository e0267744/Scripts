#!/bin/bash

hashthemall () {
	md5sum --tag "$1"
	sha1sum --tag "$1"
	sha256sum --tag "$1"
}

for item_to_be_hashed in "$@"
do
	if [ ! -f "$item_to_be_hashed" ]
	then echo "$item_to_be_hashed is not a file, you want to use this script on a file."
	fi 
	hashthemall "$item_to_be_hashed"
	file "$item_to_be_hashed"
	echo "--------------------------------------------------------------------------------------------"
done

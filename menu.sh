#!/bin/bash
#A script for checking the hash of secret password

#Enter a secret password in plaintext
read -sp 'password : ' pass_var
echo
echo "password : $pass_var"
#Just to check that password was entered correctly
#Enter the secret password in plaintext into sha256sum
echo "$pass_var" | sha256sum
echo "$pass_var" | sha256sum --check secret.txt
echo "$pass_var" | sha256sum --check secret.txt && echo "Access Granted" || echo "Access Denied"
if [[ "Access Granted" ]] ; then
echo "1. Create a folder"
echo "2. Copy a folder"
echo "3. Set a password"
fi
#Select an option from either 1,2,or 3

read -p "Select Option: " OPT
case "$OPT" in 
1)
./folderCreator.sh
;;
2)
./folderCopier.sh
;;
3)
./setPassword.sh
;;
esac
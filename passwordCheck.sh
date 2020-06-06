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
echo "$pass_var" | sha256sum --check secret.txt && echo "Access Granted" exit 0 || echo "Access Denied" exit 1
#!/bin/bash
#A script to enter a folder and to enter a secret password
read -p 'Foldername :  ' foldername_var
echo "Foldername : $foldername_var"
read -sp 'password : ' pass_var
echo
echo "password : $pass_var"
#A script which saves the secret password in a file 'secret.txt'
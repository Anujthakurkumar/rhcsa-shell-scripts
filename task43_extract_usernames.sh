#!/bin/bash


# task 43: This script is used to extract usernames from /etc/passwd and save to userlist.txt



cut -d ':' -f1 /etc/passwd > userlist.txt


#confirming completion


echo "usernames have been saved to userlist.txt"

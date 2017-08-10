#!/bin/bash

#10.12 Verify SSH Access Limit
printf "\e[0m Checking the Allowed Users:  \n \033[33;32m"
if grep "^AllowUsers[[:space:]]" /etc/ssh/sshd_config > /dev/null; then # Grep "AllowUsers[[:space:]]" to check if there are any users and remove the output with "/dev/null"
	grep "^AllowUsers" /etc/ssh/sshd_config | sed -n -e 's/^.*AllowUsers //p'
else
        printf "\033[33;31m Empty \n"
fi

printf "\e[0m Checking the Allowed Groups:  \n \033[33;32m"
if grep "^AllowGroups[[:space:]]" /etc/ssh/sshd_config > /dev/null; then # Grep "AllowGroups[[:space:]]" to check if there are any groups and remove the output with "/dev/null"
	grep "^AllowGroups" /etc/ssh/sshd_config | sed -n -e 's/^.*AllowGroups //p'
else
        printf "\033[33;31m Empty \n"
fi

printf "\e[0m Checking the Denied Users:  \n \033[33;32m"
if grep "^DenyUsers[[:space:]]" /etc/ssh/sshd_config > /dev/null; then # Grep "DenyUsers[[:space:]]" to check if there are any users and remove the output with "/dev/null"
	grep "^DenyUsers" /etc/ssh/sshd_config | sed -n -e 's/^.*DenyUsers //p'
else
        printf "\033[33;31m Empty \n"
fi

printf "\e[0m Checking the Denied Groups:  \n \033[33;32m"
if grep "^DenyGroups[[:space:]]" /etc/ssh/sshd_config > /dev/null; then # Grep "DenyGroups[[:space:]]" to check if there are any groups and remove the output with "/dev/null"
	grep "^DenyGroups" /etc/ssh/sshd_config | sed -n -e 's/^.*DenyGroups //p'
else
        printf "\033[33;31m Empty \n"
fi


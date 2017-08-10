#!/bin/bash

#10.8 Verify SSH Root Login
printf "\e[0m Checking if PermitRootLogin is disabled:  \n"
if grep "^PermitRootLogin no" /etc/ssh/sshd_config > /dev/null; then # Grep "PermitRootLogin no" to ensure settings is correct and remove the output with "/dev/null"
        printf "\033[33;32m PASS \n"
else
        printf "\033[33;31m FAIL \n"
fi

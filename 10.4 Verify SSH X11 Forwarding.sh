#!/bin/bash

#10.4 Verify SSH X11 Forwarding
printf "\e[0m Checking if X11Forwarding is disabled:  \n"
if grep "^X11Forwarding no" /etc/ssh/sshd_config > /dev/null; then # Grep "X11Forwarding no" to ensure settings is correct and remove the output with "/dev/null"
        printf "\033[33;32m PASS \n"
else
        printf "\033[33;31m FAIL \n"
fi

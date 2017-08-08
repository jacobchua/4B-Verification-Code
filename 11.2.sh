#!/bin/bash

printf "\e[0m Determine the current settings in /etc/pam.d/systemauth \n "
if grep pam_pwquality.so /etc/pam.d/system-auth >/dev/null; then # Grep "pam_pwquality.so" to ensure settings is correct and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi



printf "\e[0m Settings in /etc/security/pwquality.conf \n "

printf "\e[0m Checking minlen \n"
if cat /etc/security/pwquality.conf | grep "^minlen = 14" > /dev/null; then # Grep "minlen = 14" from /etc/security/pwquality.conf and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Checking dcredit \n"
if cat /etc/security/pwquality.conf | grep "^dcredit = -1" >/dev/null; then # Grep "dcredit = -1" from /etc/security/pwquality.conf and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Checking ucredit \n"
if cat /etc/security/pwquality.conf | grep "^ucredit = -1" >/dev/null; then # Grep "ucredit = -1" from /etc/security/pwquality.conf and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Checking ocredit \n"
if cat /etc/security/pwquality.conf | grep "ocredit = -1" >/dev/null; then # Grep "ocredit = -1" from /etc/security/pwquality.conf and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Checking lcredit \n"
if cat /etc/security/pwquality.conf | grep "lcredit = -1" >/dev/null; then # Grep "lcredit = -1" from /etc/security/pwquality.conf and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

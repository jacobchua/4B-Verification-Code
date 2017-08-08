#!/bin/bash

printf "\e[0m Checking if Cron is enabled \n"
if systemctl is-enabled crond | grep enabled >/dev/null; then #Use systemctl to check if cron is enabled
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

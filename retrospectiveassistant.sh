#!/bin/sh

# Retrospective Assistant 3000. Makes your SCRUM ceremonies faster.
#
# @author aakimov
# @version 1.0.0-beta

set -e
set --

echo "============================================================="
echo -e "\e[31m\e[1mWelcome to the Ultimate Retrospective Assistant 3000.\e[0m"
echo -e "Please tell how you feel about previous sprint. We truly care!"

echo -e "\n───────▄▀▀▀▀▀▀▀▀▀▀▄▄\n────▄▀▀░░░░░░░░░░░░░▀▄\n──▄▀░░░░░░░░░░░░░░░░░░▀▄\n──█░░░░░░░░░░░░░░░░░░░░░▀▄\n─▐▌░░░░░░░░▄▄▄▄▄▄▄░░░░░░░▐▌\n─█░░░░░░░░░░░▄▄▄▄░░▀▀▀▀▀░░█\n▐▌░░░░░░░▀▀▀▀░░░░░▀▀▀▀▀░░░▐▌\n█░░░░░░░░░▄▄▀▀▀▀▀░░░░▀▀▀▀▄░█\n█░░░░░░░░░░░░░░░░▀░░░▐░░░░░▐▌\n▐▌░░░░░░░░░▐▀▀██▄░░░░░░▄▄▄░▐▌     I know that feel bro!\n─█░░░░░░░░░░░▀▀▀░░░░░░▀▀██░░█\n─▐▌░░░░▄░░░░░░░░░░░░░▌░░░░░░█\n──▐▌░░▐░░░░░░░░░░░░░░▀▄░░░░░█\n───█░░░▌░░░░░░░░▐▀░░░░▄▀░░░▐▌\n───▐▌░░▀▄░░░░░░░░▀░▀░▀▀░░░▄▀\n───▐▌░░▐▀▄░░░░░░░░░░░░░░░░█\n───▐▌░░░▌░▀▄░░░░▀▀▀▀▀▀░░░█\n───█░░░▀░░░░▀▄░░░░░░░░░░▄▀\n──▐▌░░░░░░░░░░▀▄░░░░░░▄▀\n─▄▀░░░▄▀░░░░░░░░▀▀▀▀█▀\n▀░░░▄▀░░░░░░░░░░▀░░░▀▀▀▀▄▄▄▄▄\n"

concern_count=0
concern=""
solution=""

while true;
do
  echo "-------------------------------------------------------------"
  echo "Type your issue followed by [ENTER]:"
  read concern

  [[ ! -z $concern ]] || break

  concern_count=$((concern_count+1))
  echo "Loggin your issue to /dev/null database. Please wait..."
  echo $concern > /dev/null

  echo -e "\e[1mConcern #$concern_count\e[0m: $concern"

  # The following line will generate not only alphanumeric value for better solution quality
  #solution="$(dd if=/dev/urandom bs=100 count=1 status=noxfer)"
  solution="$(cat /dev/urandom | tr -dc ' a-zA-Z0-9' | fold -w 100 | head -n 1)"
  echo -e "\e[1mProposed Solution\e[0m: \e[32m\e[1m$solution\e[0m"
done

echo "============================================================="
echo -e "Total Issues Processed: \e[32m\e[1m$concern_count\e[0m"
echo -e "\e[31m\e[1mThank you for using the Ultimate Retrospective Assistant 3000.\e[0m"
echo -e "\e[5mKeep working hard and creating best in class experience.\e[0m"


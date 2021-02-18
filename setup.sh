#!/bin/env bash
echo -e "\033[1;31mInstalling please wait......\033[0m"
sleep 1
v=`which python3`
v2=`pip list | grep N4Tools`

if [[ $v == *"python3"* ]]; then
  #pip install --upgrade pip
  if [[ $v2 == *"N4Tools"* ]]; then
    echo -e "\033[1;33mAlready installed...\033[0m"
  else
    pip install N4Tools
  fi
else
  apt-get install python3
  pip install N4Tools
fi
chmod +x scan.py && ./scan.py

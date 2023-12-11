#!/bin/bash

set -e 

echo "Reset global git config name and email? (y/n)"
read INP1
echo "Disable git auto detect user and email? (y/n)"
read INP2

if [[ "$INP1" == "Y" || "$INP1" == "y" ]]; then
  git config --global user.name "" && git config --global user.email ""
  echo "> global git username and email reset completed"
fi

if [[ $INP2 == "Y" || $INP2 == "y" ]]; then
  git config --global user.useConfigOnly true
  echo "> git auto detect username and email disabled" 
fi

echo "> Completed"

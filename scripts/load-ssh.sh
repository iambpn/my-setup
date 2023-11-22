#!/bin/bash

set -e

SSH_PATH="../.ssh/*"
DESTINATION="$HOME/.ssh"

if [ ! -d "$DESTINATION" ]; then
  echo "Creating $DESTINATION Directory"
  mkdir $DESTINATION
fi

echo "Decrypting File"
ansible-vault decrypt $SSH_PATH

echo "Moving File to $DESTINATION"
mv -i $SSH_PATH "$DESTINATION"
git reset --hard &> /dev/null # reset git
echo "Decrypting completed"

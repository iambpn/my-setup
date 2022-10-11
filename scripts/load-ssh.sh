#!/bin/bash

set -e

SSH_PATH="../.ssh/*"
echo "Decrypting File"
ansible-vault decrypt $SSH_PATH
echo "Moving File to '$HOME'/.ssh/"
mv $SSH_PATH "$HOME/.ssh/" -i
git reset --hard &> /dev/null
echo "Decrypting completed"

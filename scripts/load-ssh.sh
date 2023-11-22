#!/bin/bash

set -e

SSH_PATH="../.ssh/*"
echo "Decrypting File"
ansible-vault decrypt $SSH_PATH
echo "Moving File to $HOME/.ssh/"
mv -i $SSH_PATH "$HOME/.ssh/"
git reset --hard &> /dev/null # reset git
echo "Decrypting completed"

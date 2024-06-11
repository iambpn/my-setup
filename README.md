# MyVault

Vault to store a sensitive data

### Running Script:

- Add execute permission to scripts: `chmod +x <script_name> `

### Basic Commands:

Encrypt using: `ansible-vault encrypt <files>`

Decrypt using: `ansible-vault decrypt <files>`

View using: `ansible-vault view <files>`

Install ansible: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#pipx-install Docs: https://docs.ansible.com/ansible/latest/user_guide/vault.html#advantages-and-disadvantages-of-encrypting-files

### Adding auto completion to bash

- Generate auto completion and save to the file
- Add this line to the bash `\. <autocompletion_filename>`

  Here, `\.` Execute commands from a file in the current shell. For more check help using `\. --help`

### Setup

- Mac

  - Switch `ctrl` and `command` key
  - Install `Maccy` as clipboard manager

- Linux

  - Install `Diodon` as clipbard manager

### Default bash extension

**Usage: Copy the script inside on `.bashrc` and reload the terminal**

- Show Git Branch Name in Bash

```bash
# Show git branch name in bash
force_color_prompt=yes
color_prompt=yes
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
if [ "$color_prompt" = yes ]; then
 PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '
else
 PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
fi
unset color_prompt force_color_prompt
```

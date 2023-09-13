#!/usr/bin/env bash

########################
# include the magic
########################
cd ~

. ~/source/user-apps/demo-magic/demo-magic.sh

DEMO_PROMPT="${GREEN}➜ ${CYAN}\W "

clear

pe "# Welcome to the command line workshop!"
pe "ls"
pe "pwd"
pe "git clone https://github.com/mbestavros/intro-workshop.git"
pe "cd ~"
pe "pwd"
pe "cd intro-workshop"
pe "pwd"
pe "ls"
pe "cd .."
pe "pwd"
pe "cd intro-workshop/stuff"
pe "pwd"
pe "ls"
pe "cat spark.txt"
pe "mv spark.txt renamed.txt"
pe "ls"
pe "ls -a"
pe "cd ."
pe "pwd"
pe "cd .."
pe "pwd"
pe "cd stuff"
pe "cat .betyoudidntseethisfile.txt"
pe "vim renamed.txt"
pe "cat renamed.txt"
pe "cd ~"
pe "# Github time!"
pe "ls -al ~/.ssh"
pe "ssh-keygen -t rsa -C 'your_email@example.com'"
pe "ls -al ~/.ssh"
pe "cat ~/.ssh/id_rsa.pub"
pe "cd ~"
pe "mkdir git"
pe "cd git"
pe "# Time to clone the git url, Mark!"
cmd
pe "ls"
pe "# Time to change into the new cloned directory!"
cmd
pe "ls"
pe "vim README.md"
pe "git status"
pe "git add README.md"
pe "git add ."
pe "git commit -m 'Update README.md'"
pe "git push"

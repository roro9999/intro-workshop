#!/usr/bin/env bash

########################
# include the magic
########################
cd ~

. ~/source/user-apps/demo-magic/demo-magic.sh

DEMO_PROMPT="${GREEN}➜ ${CYAN}\W "

clear

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

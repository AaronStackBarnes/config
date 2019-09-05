#!/usr/bin/env bash

git commit -am "'$@'"
git push 

cp ./zshrc ~/.zshrc 
cp ./vimrc ~/.vimrc

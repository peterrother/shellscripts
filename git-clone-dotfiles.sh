#!/bin/bash

cd ~
git init .
git remote add -t \* -f origin https://github.com/peterrother/dotfiles.git
git fetch
git checkout main

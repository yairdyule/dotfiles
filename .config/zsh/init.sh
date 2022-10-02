#!/bin/bash

# zmodload zsh/zprof

ZSH_DIR=~/.config/zsh
eval "$(starship init zsh)"

# `. filename.sh` runs a script 
for file in $(exa $ZSH_DIR)
do
  if [ "$file" != "init.sh" ] && [ "$file" != "plugins" ]
  then
    # echo "sourcing $file..."
    . $ZSH_DIR/$file
  fi
done

. ~/.config/zsh/plugins/init.sh

# zprof

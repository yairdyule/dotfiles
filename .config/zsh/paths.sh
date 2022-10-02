#!/bin/bash

PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
PATH="/Users/jaredjewell/.local/bin:$PATH"
PATH="/usr/local/bin:$PATH"
PATH=$PATH:$HOME/.local/bin
PATH="$HOME/prisma-engines/target/release:$PATH"

export STARSHIP_CONFIG=~/.config/starship.toml

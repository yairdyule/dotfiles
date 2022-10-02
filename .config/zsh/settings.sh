#!/bin/bash

# use vi bindings in prompt
set -o vi

# `cd some_dir` -> `some_dir`
setopt autocd

# capslock -> backspace
hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000039,"HIDKeyboardModifierMappingDst":0x70000002A}]}' 2>&1 >/dev/null


# autocompletion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

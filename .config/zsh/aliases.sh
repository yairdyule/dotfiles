#!/bin/bash
alias md="mkdir"
alias l="exa --icons --group-directories-first -r --sort=Ext -1"
alias ls="exa --icons --group-directories-first -r --sort=Ext --long --no-permissions --no-filesize --no-user --no-time --git"
alias lst="exa --tree --level=2 --icons --ignore-glob='*node*' --group-directories-first -r --sort=Ext"
alias mv="mv -v"
alias cl="clear"
alias sz="source ~/.zshrc"

# git
alias lg='lazygit'
alias ga="git add"
alias gb="git branch"
alias gl="git log | nvim -R"
alias glg="git log --graph --oneline --decorate"
alias gst="git status --short"
alias grs='git restore'
alias gsw="git switch"
alias gcsm="git commit -m"
alias grst="git restore --staged"

# long live kitty
# # tmux
# alias ts="tmux new -s"
# alias ta="tmux attach -t"
# alias tls="tmux ls"
# alias tk="tmux kill-session -t"

alias showip="ifconfig | grep \"inet \" | grep -v 127.0.0.1"
alias budget="cd ~/Documents/interesting-repos/budgeting; (cd actual && yarn run start:browser) & (cd actual-server && yarn run start)"

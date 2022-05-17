PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
PATH="/Users/jaredjewell/.local/bin:$PATH"
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/bin/ltex-ls-15.2.0/bin/:$PATH"
PATH=$PATH:$HOME/.local/bin

set -o vi

ZSH_DISABLE_COMPFIX=true
export ZSH="/Users/jaredjewell/.oh-my-zsh"
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
export JDTLS_HOME=~/.local/share/nvim/lsp_servers/jdtls

# cd desk-top --> cd desktop
HYPHEN_INSENSITIVE="true"

plugins=(
  # catimg
  colored-man-pages
  git
  npm
  per-directory-history
  tmux
  vi-mode
  zsh-autosuggestions 
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="exa --icons --group-directories-first -r --sort=Ext"
alias lst="exa --tree --level=2 --icons --ignore-glob='*node*' --group-directories-first -r --sort=Ext"
alias mv="mv -v"
alias ta="tmux attach -t"
alias tn="tmux new-session -s" 
alias tls="tmux ls"
alias tk="tmux kill-session -t"
alias ltx="latexmk -pdf -pvc"


zplug "marlonrichert/zsh-autocomplete"
zplug "zdharma/fast-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"

BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"


eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

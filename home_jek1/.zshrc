#--------------------------------
# powerlevel10k

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


#--------------------------------
# utils

alias ls="ls --color"
alias tree="tree -C"
alias diff="diff --color=always"
alias clip="wl-copy"
alias ssh="TERM=xterm-256color ssh"
alias gc="gcloud"
alias genpw="head -100 /dev/urandom | md5sum | rev | cut -c 4- | rev"


#--------------------------------
# keybinds

bindkey  "^[[3~"  delete-char   # delete
bindkey '^[[1;5C' forward-word  # ctrl+right
bindkey '^[[1;5D' backward-word # ctrl+left
bindkey '^H' backward-kill-word # ctrl+backspace
bindkey '^[[3;5~' kill-word     # ctrl+delete


#--------------------------------
# history

export HISTFILE="$HOME/.histfile"
export HISTSIZE=1000000000
export SAVEHIST=1000000000

setopt INC_APPEND_HISTORY       # append instantly 
setopt HIST_EXPIRE_DUPS_FIRST   # remove existing duplicates
setopt HIST_IGNORE_ALL_DUPS     # don't append duplicate entries
setopt HIST_IGNORE_SPACE        # don't append whitespace


#--------------------------------
# path

JETBRAINS="$HOME/.local/share/JetBrains/Toolbox/scripts"
CARGO="$HOME/.cargo/bin"

PATH="$PATH:$JETBRAINS:$CARGO"


#--------------------------------
# misc

autoload -U compinit promptinit # autocomplete

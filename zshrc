prompt='%F{blue}%m%f%B.%b%F{green}%n%f%B.%b%F{yellow}%4~%f %Bλ%b '

HISTSIZE=2000
SAVEHIST=2000
SHARE_HISTORY=1
HISTFILE=~/.histfile
setopt share_history hist_ignore_dups

export EDITOR=vim

source ~/.local_profile

bindkey -e
bindkey '^r' history-incremental-search-backward
bindkey 'ä' kill-word
bindkey 'æ' forward-word
bindkey 'â' backward-word

autoload -z edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line # like bash

alias rm='rm -I'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls --color'
alias grep='grep --colour'
alias tmux='tmux -2'
alias g=git

# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

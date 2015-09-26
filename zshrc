prompt='%F{blue}%m%f%B.%b%F{green}%n%f%B.%b%F{yellow}%4~%f %Bλ%b '

HISTSIZE=2000
SAVEHIST=2000
SHARE_HISTORY=1
HISTFILE=~/.histfile
setopt share_history hist_ignore_dups

source ~/.local_profile

export EDITOR=vim
export RUST_SRC_PATH=/usr/local/src/rust/src

bindkey -v
bindkey -M viins jj vi-cmd-mode

autoload -z edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

alias rm='rm -I'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls --color'
alias grep='grep --colour'
alias tmux='tmux -2'
alias g='git'
alias ..='cd ../'

# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

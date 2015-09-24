HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
SHARE_HISTORY=1
prompt="%F{blue}%m%f%B.%b%F{green}%n%f%B.%b%F{yellow}%4~%f %Bλ%b "

export RUST_SRC_PATH=/usr/local/src/rust/src

bindkey -e

alias rm="rm -I"
alias cp="cp -i"
alias mv="mv -i"
alias ls="ls --color"
alias tmux="tmux -2"

# The following lines were added by compinstall
zstyle :compinstall filename '/home/tom/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

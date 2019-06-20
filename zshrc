prompt='%F{blue}%m%f%B.%b%F{green}%n%f%B.%b%F{yellow}%4~%f %Bλ%b '

HISTSIZE=20000
SAVEHIST=20000
SHARE_HISTORY=1
HISTFILE=~/.histfile
setopt share_history hist_ignore_dups

# Only set to nvim if it is not already set
: ${EDITOR:=nvim}
export EDITOR

bindkey -e
bindkey '^r' history-incremental-search-backward

autoload -z edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line # like bash

alias mpv="mpv --opengl-backend=wayland"

alias e="${EDITOR}"

alias vi="nvim"
alias vim="nvim"

alias k="kak"

alias add="git add"
alias commit="git commit -v"
alias g=git
alias reset="git reset"
alias st="git status"
alias db="git branch -l | fzf | xargs git branch -d"
alias cob="git branch -l | fzf | xargs git checkout"
alias coba="git branch -la | fzf | xargs git checkout"
alias ls=exa

alias pr="hub pull-request"

alias dc="docker-compose"
alias dcup="docker-compose up"
alias dcr="docker-compose run --rm"

alias cp='cp -i'
alias grep='grep --colour'
alias mv='mv -i'
alias rm=trash
alias corgi=cargo
alias yanni=yarn

export LC_ALL=en_US.UTF-8

# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

export PATH=~/.local/bin:$PATH

# Rust
export PATH=~/.cargo/bin:$PATH
export CARGO_INCREMENTAL=1

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# NPM
PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

# Krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

export VOLTA_HOME="$HOME/.volta"
[ -s "$VOLTA_HOME/load.sh" ] && . "$VOLTA_HOME/load.sh"

export PATH="$VOLTA_HOME/bin:$PATH"

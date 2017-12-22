prompt='%F{blue}%m%f%B.%b%F{green}%n%f%B.%b%F{yellow}%4~%f %Bλ%b '

HISTSIZE=20000
SAVEHIST=20000
SHARE_HISTORY=1
HISTFILE=~/.histfile
setopt share_history hist_ignore_dups

export EDITOR=nvim

bindkey -e
bindkey '^r' history-incremental-search-backward

autoload -z edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line # like bash

alias mpv="mpv --opengl-backend=wayland"

alias e="nvim"
alias vi="nvim"
alias vim="nvim"

alias add="git add"
alias checkout="git checkout"
alias co="git checkout"
alias commit="git commit"
alias bl="git branch -l"
alias branch="git branch"
alias gdiff="git diff"
alias g=git
alias glog="git log"
alias pull="git pull"
alias push="git push"
alias rebase="git rebase"
alias reset="git reset"
alias stash="git stash"
alias st="git status"
alias db="git branch -l | fzf | xargs git branch -d"
alias cob="git branch -l | fzf | xargs git checkout"
alias coba="git branch -la | fzf | xargs git checkout"
alias fall="git fetch --all"
alias ls=exa

function pfo() {
    git push -f origin `git rev-parse --abbrev-ref HEAD`
}

alias pr="hub pull-request"

alias dc="docker-compose"
alias dcup="docker-compose up"
alias dcr="docker-compose run --rm"
alias doc="docker"

alias cp='cp -i'
alias grep='grep --colour'
alias ma=make
alias mv='mv -i'
alias please=sudo
alias rm=trash
alias status="git status"

alias open=xdg-open

alias corgi=cargo
alias nyan=yarn
alias ayran=yarn
alias doch="sudo !!"

alias vpn=expressvpn

source ~/.profile
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

# Go
export GOPATH=~/src/golang
export PATH=~/src/golang/bin:$PATH

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/aur/fzf-extras/fzf-extras.sh ] && source ~/aur/fzf-extras/fzf-extras.sh
[ -f ~/aur/fzf-extras/fzf-extras.zsh ] && source ~/aur/fzf-extras/fzf-extras.zsh

export CHROME_BIN=`which chromium`

export PATH=$PATH:~/.gem/ruby/2.4.0/bin
export PATH=$PATH:/home/tom/emsdk-portable:/home/tom/emsdk-portable/clang/fastcomp/build_incoming_64/bin:/home/tom/emsdk-portable/node/4.1.1_64bit/bin:/home/tom/emsdk-portable/emscripten/incoming

# NPM
export NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$NPM_PACKAGES/bin:$PATH"

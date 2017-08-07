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
alias v="nvim"
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
alias ls='ls --color'
alias ma=make
alias mv='mv -i'
alias please=sudo
alias rm='rm -I'
alias status="git status"

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
export PATH=~/.cargo/bin:$PATH
export PATH=~/src/golang/bin:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# [ -f ~/aur/fzf-extras/fzf-extras.sh ] && source ~/aur/fzf-extras/fzf-extras.sh
# [ -f ~/aur/fzf-extras/fzf-extras.zsh ] && source ~/aur/fzf-extras/fzf-extras.zsh

export GOPATH=~/src/golang
export CHROME_BIN=`which chromium`

export PATH=$PATH:~/.gem/ruby/2.4.0/bin

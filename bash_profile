export RBENV_ROOT=/usr/local/var/rbenv
export EDITOR=subl

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

source ~/.git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1

PS1='`if [ $HOSTNAME = "eir.local" ]; then echo "\[\033[37m\]↳\u@\h\[\033[00m\]"; else echo "\[\033[39m\]↳\u@\h\[\033[00m\]"; fi`:\[\033[39m\]\w\[\033[31m\]$(__git_ps1 " [ %s ]")\[\033[00m\]\$ '

#---------------------------------------------------------------------
# Aliases
#---------------------------------------------------------------------

alias sco='cd ~/Scout'
alias rpg='cd ~/programming/rails_projects'
alias rupg='cd ~/programming/ruby'
alias jspg='cd ~/programming/javascript'

#---------------------------------------------------------------------
# Add SSH Identity
#---------------------------------------------------------------------


#---------------------------------------------------------------------
# PATH Commands
#---------------------------------------------------------------------

PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"
export PATH=/usr/local/bin:$PATH

#---------------------------------------------------------------------
# Docker
#---------------------------------------------------------------------

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/mmorris/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

#---------------------------------------------------------------------
# Go
#---------------------------------------------------------------------
export GOPATH=~/gocode
export PATH="$PATH:$GOPATH/bin"


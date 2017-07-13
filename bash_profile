export RBENV_ROOT=/usr/local/var/rbenv
export EDITOR=subl

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# if [ -f /opt/local/etc/bash_completion ]; then
#     . /opt/local/etc/bash_completion
# fi

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

source ~/.git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
PS1='`if [ $HOSTNAME = "eir.local" ]; then echo "\[\033[37m\]\u@\h\[\033[00m\]"; else echo "\[\033[39m\]↳\u@\h\[\033[00m\]"; fi`:\[\033[39m\]\w\[\033[31m\]$(__git_ps1 " [ %s ]")\[\033[00m\]\$ '


# source /usr/local/etc/bash_completion.d/git-prompt.sh
# GIT_PS1_SHOWDIRTYSTATE=true
# export PS1='\033[37m\]\u@\h \033[00m\]\w$(__git_ps1 " [ %s ]")\$ '
#---------------------------------------------------------------------
# Aliases
#---------------------------------------------------------------------

alias sco='cd ~/Scout'
alias rpg='cd ~/programming/rails_projects'
alias rupg='cd ~/programming/ruby'
alias jspg='cd ~/programming/javascript'
alias be='bundle exec'
alias pm='python manage.py'
alias rad='cd ~/Radial'

#---------------------------------------------------------------------
# Add SSH Identity
#---------------------------------------------------------------------


#---------------------------------------------------------------------
# PATH Commands
#---------------------------------------------------------------------

PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH=$PATH

#---------------------------------------------------------------------
# Docker/Dinghy
#---------------------------------------------------------------------

export DOCKER_HOST=tcp://192.168.99.100:2376
export DOCKER_CERT_PATH=/Users/mmorris/.docker/machine/machines/dinghy
export DOCKER_TLS_VERIFY=1
export DOCKER_MACHINE_NAME=dinghy

#---------------------------------------------------------------------
# Go
#---------------------------------------------------------------------
export GOPATH=~/gocode
export PATH="$PATH:$GOPATH/bin"

export ROLLBAR_POST_CLIENT_ITEM=511e1cf8da1b49458440d781484dbff7

export PATH="/usr/local/sbin:$PATH"

export NVM_DIR="/Users/mmorris/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export WMSJAVA_HOME="/Library/WowzaStreamingEngine-4.6.0/java"

eval "$(thefuck --alias)"

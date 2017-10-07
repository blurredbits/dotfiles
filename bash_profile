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

function _update_ps1() {
  PS1="$(~/powerline-shell.py $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
  PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# source ~/.git-prompt.sh

# RCol='\[\e[0m\]'    # Text Reset
# Red='\[\e[0;31m\]'  # Red
# Gre='\[\e[0;32m\]'  # Green
# Yel='\[\e[0;33m\]'  # Yellow
# Blu='\[\e[0;34m\]'  # Blue
# Pur='\[\e[0;35m\]'  # Purple
# Cya='\[\e[0;36m\]'  # Cyan
# Whi='\[\e[0;37m\]'  # White

# GIT_PS1_SHOWDIRTYSTATE=1

# PS1=
# PSCol=
# if [ $HOSTNAME == 'lagertha.local' ]; then
#     PSCol="$Gre"                # For Main Computer
# elif [ $HOSTTYPE == 'arm' ]; then
#     PSCol="$Gre"                # For pi
# elif [ $HOSTNAME == 'ma.sdf.org' ]; then
#     PSCol="$Blu"                # For MetaArray
# elif [[ $MACHTYPE =~ arm-apple-darwin ]]; then
#     PSCol="$Gre"                # For iOS
# elif [ $MACHTYPE == 'i486-pc-linux-gnu' ]; then
#     PSCol="$Whi"                # For Netbook
# elif [[ "$MACHTYPE" == "x86_64--netbsd" && "$OSTYPE" == "netbsd" ]]; then
#     PSCol="$Yel"                # For Main Cluster
# else
#     PS1+="\h "              # Un-designated catch-all
# fi

# PS1+="${PSCol}\u@\h\[\033[00m\]:\[\033[39m\]\w\[\033[31m\]$(__git_ps1 " [ %s ]")\[\033[00m\] \$ "
#PS1='`if [ $HOSTNAME = "lagertha.local" ]; then echo "\[\033[37m\]\u@\h\[\033[00m\]"; else echo "\[\033[39m\]↳\u@\h\[\033[00m\]"; fi`:\[\033[39m\]\w\[\033[31m\]$(__git_ps1 " [ %s ]")\[\033[00m\]$ '


#PS1=$'\\[\e[31m\\]\xe2\x88\xb4\\[\e[0m\\]\n\xe2\x86\x92 \xe2\x98\xbf \\~ \\[\e[31m\\]\xe2\x98\x85 $? \\[\e[0m\\]'
# source /usr/local/etc/bash_completion.d/git-prompt.sh
# GIT_PS1_SHOWDIRTYSTATE=true
# export PS1='\033[37m\]\u@\h \033[00m\]\w$(__git_ps1 " [ %s ]")\$ '
#---------------------------------------------------------------------
# Aliases
#---------------------------------------------------------------------

alias rpg='cd ~/programming/rails_projects'
alias rupg='cd ~/programming/ruby'
alias jspg='cd ~/programming/javascript'
alias be='bundle exec'
alias pm='python manage.py'
alias rad='cd ~/Radial'
alias ryzen='ssh ryzen.local'

#---------------------------------------------------------------------
# Add SSH Identity
#---------------------------------------------------------------------


#---------------------------------------------------------------------
# PATH Commands
#---------------------------------------------------------------------

PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH=~/bin:$PATH
export PATH=$PATH

#---------------------------------------------------------------------
# Docker/Dinghy
#---------------------------------------------------------------------

export DOCKER_HOST=tcp://192.168.99.100:2376
export DOCKER_CERT_PATH=/Users/mmorris/.docker/machine/machines/dinghy
export DOCKER_TLS_VERIFY=1
export DOCKER_MACHINE_NAME=dinghy

#---------------------------------------------------------------------
# Yarn
#---------------------------------------------------------------------

export PATH="$PATH:`yarn global bin`"

#---------------------------------------------------------------------
# Go
#---------------------------------------------------------------------
export GOPATH=~/gocode
export PATH="$PATH:$GOPATH/bin"

export ROLLBAR_POST_CLIENT_ITEM=511e1cf8da1b49458440d781484dbff7

export PATH="/usr/local/sbin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin

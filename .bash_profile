#export PS1="[\$PWD]: \$> "
#export NODE_NO_READLINE=1
export RLWRAP_HOME=$HOME/.rlwrap
alias ed='open -a code'
export PATH=/usr/local/autoconf/bin:$PATH
export PATH=$PATH:./
export BROWSER=Safari
#source $HOME/.nvm/nvm.sh
#export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-9.0.1.jdk/Contents/Home
export PATH=$PATH:$JAVA_HOME/bin
#export PATH=/usr/local/opt/python@2/libexec/bin:$PATH
#export PATH=/Users/ruchir/Library/Python/2.7/bin:$PATH

#Pipenv
export PIPENV_MAX_DEPTH=5
#### Prompt ###
git_branch () { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'; }
TIME='\033[01;31m\]\t\033[01;32m\]'
LOCATION='\033[01;36m\]`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`'
BRANCH='\033[00;33m\][$(git_branch)]\[\033[00;0m\]\n\$>'
SP=' '
WD='\e[01;36m\]\w'
PS1=$TIME$SP$WD$SP$BRANCH$SP
PS2='\[\033[01;36m\]>'

## ls
export LSCOLORS=gxfxcxdxbxegedabagacgx
alias ll='ls -FlhaG' 
alias la='ls -FhaG'

## git customization
source ~/dev/git-completion.bash
alias gitv='git branch -vv'
alias gits='git status'
alias gitl='git log --oneline --decorate'

## useful aliases
alias nets="netstat -anp tcp"
alias nd="node --inspect-brk"
alias checkproc="lsof -i TCP:3000"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
# aws
# alias awstoken="cat ~/dev/awstoken"
# #use nvm version for node
# nvm use 0.12

# port forwading for Xo
PORTMAP="rdr pass inet proto tcp from any to any port 80 -> 127.0.0.1 port 8080 
rdr pass inet proto tcp from any to any port 443 -> 127.0.0.1 port 8443"

alias port-forward-443="echo 'rdr pass inet proto tcp from any to any port 443 -> 127.0.0.1 port 8443' | sudo pfctl -mef -"
alias port-forward-80="echo 'rdr pass inet proto tcp from any to any port 80 -> 127.0.0.1 port 8080' | sudo pfctl -mef -"
alias port-forward-enable="echo '$PORTMAP' | sudo pfctl -ef -"
alias port-forward-disable="sudo pfctl -F all -f /etc/pf.conf"
alias port-forward-list="sudo pfctl -s nat"
alias protractor=./node_modules/protractor/bin/protractor
alias xolocal="sudo cp /etc/hosts.local /etc/hosts"
alias xoaws="sudo cp /etc/hosts.aws /etc/hosts"
alias awst="cat ~/dev/awstoken | pbcopy"
alias ports="lsof -i:"
alias xp="cd ~/dev/xooui-passwords-web/src/xooui-serverless-cli"
alias xw="cd ~/dev/xooui-passwords-web"
alias py2="pipenv run python2"
alias py3="pipenv run python3"
alias py="pipenv run python"

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# enable autojump 
  [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

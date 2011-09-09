function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

export PS1="$GREEN\u@\h$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

export PYTHONPATH="/Library/Python/2.6/site-packages:$PYTHONPATH"
alias python=python2.6

# Postgres
export PATH=/Library/PostgreSQL/9.0/bin:$PATH
export PATH=/Library/PostgreSQL/9.0/lib:$PATH
export PATH=/Library/PostgreSQL/9.0/include:$PATH
export PATH=/Library/PostgreSQL/9.0/include/libpq:$PATH

# Library Path
export LD_LIBRARY_PATH=/Library/PostgreSQL/9.0/lib

export PATH=/usr/local/scala/2.9.0.1/bin:$PATH
export PATH=/usr/local/groovy/1.8.1/bin:$PATH
export PATH=/usr/local/gant/1.9.6/bin:$PATH
export PATH=/usr/local/rabbitmq/2.5.1/sbin:$PATH

export PATH=~/pear/bin:$PATH

# for mono
export PKG_CONFIG_PATH=/Library/Frameworks/Mono.framework/Versions/2.10.4/lib/pkgconfig/
export MONO_MWF_MAC_FORCE_X11=1

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
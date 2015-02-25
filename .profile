
# Set up the search paths:
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/etc:/usr/lib"
export PATH

export EDITOR=vi

export SHELL=/bin/bash

# Set up the shell environment:
set -u
trap "echo 'logout'" 0

set -o vi
export PS1='(\e[31;1m\]\h\e[0m\]) \w>\n[\!] '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'

export HOST=`hostname`

# if we have keychain and private keys, set up agent with keychain
if [[ -f ~/.ssh/id_dsa ]]; then
       for keychain in /usr/local/keychain/bin/keychain; do
               if [[ -x $keychain ]]; then
                       $keychain -q ~/.ssh/id_dsa
                       source ~/.keychain/$HOST-sh
               fi
       done
fi

eval `gdircolors ~/.dircolors`

alias vi='vim'
alias ls='gls -hFs --color=always'
alias ls='gls -hFs --color=always'
alias ll='ls -hlap'
alias lsd='ls -hd'
alias llm='ls -hla | more'
alias git-svn='git svn'
alias ipy='ipython'
alias ipn='ipython notebook'
alias diffcolor='git diff --color=always --color-words'
alias h="history | grep "

set +o nounset

export PS1='(\e[35;1m\]\h\e[0m\]) \w>\n[\!] '

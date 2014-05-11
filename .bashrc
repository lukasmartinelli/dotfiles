#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source virtualenvwrapper.sh
PYTHONPATH=/usr/lib/python3.4/site-packages
EDITOR=nano
WORKON_HOME=~/.virtualenvs
PATH="$PATH:$(ruby -rubygems -e "puts Gem.user_dir")/bin"
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

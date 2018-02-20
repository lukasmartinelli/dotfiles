### Oh my zsh ###
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="eastwood"           # Cool themes: agnoster, eastwood, gallois
DISABLE_AUTO_UPDATE="true"
DEFAULT_USER="lukasmartinelli" # Default user is hidden in prompt

stty -ixon
plugins=(archlinux git pip virtualenvwrapper python vagrant web-search vi-mode history-substring-search)

### Customize prompt ###
source $ZSH/oh-my-zsh.sh

### Key bindings ###
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

### Color scheme ###
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
base16_default-dark

### Alias ###
alias tree='tree -I "*.pyc|__pycache__|node_modules"'
alias lsla='ls -l --block-size=M'
alias lsu='fleetctl list-units'
alias lsm='fleetctl list-machines'
alias lsuf='fleetctl list-unit-files'
alias jouf='fleetctl journal --follow'
alias goi='go install'

### Environment ###
export NVM_DIR="${HOME}/.nvm"
export TERM='xterm-256color'
export EDITOR='vim'
export PYTHONPATH=/usr/lib/python3.4/site-packages
export NODE_PATH="/usr/local/lib/node_modules"
export GOPATH=$HOME/Projects/go
export WORKON_HOME=$HOME/.virtualenvs
export PATH=$HOME/bin:/usr/local/bin:$GOPATH/bin:$HOME/.gem/ruby/2.4.0/bin:$PATH
source $(brew --prefix nvm)/nvm.sh
source "$(npm root -g)/mbxcli/mapbox.sh"

# added by travis gem
[ -f /Users/lukasmartinelli/.travis/travis.sh ] && source /Users/lukasmartinelli/.travis/travis.sh

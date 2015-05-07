### Oh my zsh ###
ZSH=/usr/share/oh-my-zsh
ZSH_THEME="eastwood"           # Cool themes: agnoster, eastwood, gallois
DISABLE_AUTO_UPDATE="true"
DEFAULT_USER="morgenkaffee"    # Default user is hidden in prompt

stty -ixon
plugins=(archlinux git pip virtualenvwrapper python vagrant web-search vi-mode history-substring-search)

### Customize prompt ###
source $ZSH/oh-my-zsh.sh

### Key bindings ###
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

### Color scheme ###
BASE16_SCHEME="default"
BASE16_SHELL="/usr/share/base16-shell/base16-$BASE16_SCHEME.dark.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL

### Alias ###
alias tree='tree -I "*.pyc|__pycache__|node_modules"'
alias lsla='ls -l --block-size=M'

### Environment ###
export TERM='xterm-256color'
export EDITOR='vim'
export PYTHONPATH=/usr/lib/python3.4/site-packages
export NODE_PATH="/usr/local/lib/node_modules"
export GOPATH=$HOME/Projects/go
export WORKON_HOME=$HOME/.virtualenvs
export PATH=$HOME/bin:/usr/local/bin:$GOPATH/bin:$HOME/.gem/ruby/2.2.0/bin:$PATH

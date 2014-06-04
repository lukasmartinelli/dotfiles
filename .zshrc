### Oh my zsh ###
ZSH=/usr/share/oh-my-zsh/
ZSH_THEME="eastwood"           # Cool themes: agnoster, eastwood, gallois
DISABLE_AUTO_UPDATE="true"
DEFAULT_USER="morgenkaffee"    # Default user is hidden in prompt
COMPLETION_WAITING_DOTS="true" # Red dots whilst waiting for completion

plugins=(git)

### Customize prompt ###
source $ZSH/oh-my-zsh.sh          # Use awesome OMZ framework 

### Environment ###
export TERM='xterm-256color'
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PYTHONPATH=/usr/lib/python3.4/site-packages
export EDITOR='vim'
export WORKON_HOME=$HOME/.virtualenvs

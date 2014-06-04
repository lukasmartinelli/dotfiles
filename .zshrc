### Oh my zsh ###
ZSH=/usr/share/oh-my-zsh/
ZSH_THEME="eastwood"           # Cool themes: agnoster, eastwood, gallois
DISABLE_AUTO_UPDATE="true"
DEFAULT_USER="morgenkaffee"    # Default user is hidden in prompt

plugins=(archlinux git pip virtualenvwrapper python vagrant web-search vi-mode)

### Customize prompt ###
source $ZSH/oh-my-zsh.sh          # Use awesome OMZ framework 
eval `dircolors .guake/dircolors-solarized/dircolors.ansi-light`

# Switch capslock with escape key
xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

### Environment ###
export TERM='xterm-256color'
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PYTHONPATH=/usr/lib/python3.4/site-packages
export EDITOR='vim'
export WORKON_HOME=$HOME/.virtualenvs

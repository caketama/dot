# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export TOKEN="pk_138b137f36874f8f8b39bceabbd0637a"

# Path to your oh-my-zsh installation.
export ZSH="/home/c/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

    # ORDER
SPACESHIP_PROMPT_ORDER=(
dir
line_sep
vi_mode  # these sections will be
user     # before prompt char
host     #
venv
pyenv
git
char
)
#CHAR
SPACESHIP_CHAR_SYMBOL="➜ "

# USER
SPACESHIP_USER_PREFIX="" # remove `with` before username
SPACESHIP_USER_SUFFIX="" # remove space before host

# HOST
# Result will look like this:
#   username@:(hostname)
SPACESHIP_HOST_PREFIX="@"
SPACESHIP_HOST_SUFFIX=" "

# DIR
SPACESHIP_DIR_PREFIX='' # disable directory prefix, cause it's not the first section
#SPACESHIP_DIR_TRUNC='1' # show only last directory

plugins=(git vi-mode python zsh-autosuggestions)
ZSH_AUTOSUGGEST_USE_ASYNC=yes
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

source $ZSH/oh-my-zsh.sh
source ~/.config/aliasrc
source ~/.config/shortcutrc

setopt autocd autopushd 
setopt pushdignoredups

# Reduce delay to 0.1 after hitting ESC
export KEYTIMEOUT=1

# User configuration
autoload -Uz compinit
compinit
setopt COMPLETE_ALIASES
# You may need to manually set your language environment
export LANG=en_US.UTF-8

bindkey '^ ' autosuggest-accept

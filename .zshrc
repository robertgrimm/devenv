export ZSH="/Users/robg/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

plugins=(colorize colored-man-pages git tmux z)

source $ZSH/oh-my-zsh.sh

# oh-my-zsh sets up an alias for '...' to be '../..' which
# ordinarily could be useful except it conflicts with
# how 'p4' uses '...'.
unalias '...'

set -o vi

# Enable bash-like history search via control-r
bindkey -v
bindkey '^R' history-incremental-search-backward

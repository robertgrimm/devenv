# To install the powerlevel9k theme:
# 	git clone git@github.com:Powerlevel9k/powerlevel9k.git ~/.powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
source ~/.powerlevel9k/powerlevel9k.zsh-theme

set -o vi

# Enable bash-like history search via control-r
bindkey -v
bindkey '^R' history-incremental-search-backward

# So history works better with tmux
setopt noincappendhistory
setopt nosharehistory

# To install the powerlevel9k theme:
# 	git clone --single-branch --branch next https://github.com/bhilburn/powerlevel9k.git ~/.powerlevel9k
P9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
P9K_RIGHT_PROMPT_ELEMENTS=(status)
P9K_MODE='nerdfont-complete'
P9K_DIR_SHORTEN_LENGTH=1
P9K_DIR_SHORTEN_DELIMITER=""
P9K_DIR_SHORTEN_STRATEGY="truncate_from_right"
P9K_VCS_GIT_HOOKS=(vcs-detect-changes)
source ~/.powerlevel9k/powerlevel9k.zsh-theme

set -o vi

# Enable bash-like history search via control-r
bindkey -v
bindkey '^R' history-incremental-search-backward

# So history works better with tmux
setopt noincappendhistory
setopt nosharehistory

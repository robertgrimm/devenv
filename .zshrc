set -o vi

set_prompt() {
	# https://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
	local c_black_on_blue="%F{0}%K{67}"
	local c_black_on_purple="%F{0}%K{97}"
	local c_black_on_green="%F{0}%K{70}"
	local c_black_on_yellow="%F{0}%K{143}"
	local c_off="%k%f"

	local where_am_i="$c_black_on_purple %n@%m $c_black_on_blue %~ $c_off"

	local branch_display=""
	local branch=$(git symbolic-ref --short HEAD 2>/dev/null)
	if [ -n "$branch" ]; then
		local c_branch=""
		if output=$(git status --porcelain --untracked-files=no) && [ -z "$output" ]; then
			# Working directory clean
			c_branch="$c_black_on_green"
		else 
			# Uncommitted changes
			c_branch="$c_black_on_yellow"
		fi
		branch_display="$c_branch $branch $c_off"
	fi

	PS1="$where_am_i$branch_display"$'\n'"$ "
}
precmd_functions+=(set_prompt)

unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
	alias ls='ls --color=auto'
else
	alias ls='ls -G'
fi
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias rs='rails server -b 0.0.0.0'
alias rc='rails console'

if [ -d "$HOME/.rvm/bin" ]; then
	# Add RVM to PATH for scripting
	export PATH="$PATH:$HOME/.rvm/bin"
	# Load RVM into a shell session *as a function*
	[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
fi

if [ -f "$HOME/.workrc" ]; then
	. "$HOME/.workrc"
fi

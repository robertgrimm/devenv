export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export MM_CHARSET=utf8

export EDITOR=`which vim`
export P4EDITOR=`which vim`
export SVN_EDITOR=`which vim`
export P4CONFIG=.p4config

export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

if [ -d "/usr/local/git/bin" ]; then
	export PATH=/usr/local/git/bin:$PATH
fi

if [ -d "$HOME/bin" ]; then
	export PATH=$HOME/bin:$PATH
fi

if [ -f "/usr/libexec/java_home" ]; then
	export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
fi

# Hide MacOS ZSH message
export BASH_SILENCE_DEPRECATION_WARNING=1

# AWS
export AWS_SDK_LOAD_CONFIG=1

if [ -n "$BASH_VERSION" ]; then
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

if [ -n "$ZSH_VERSION" ]; then
	if [ -f "$HOME/.zshrc" ]; then
		. "$HOME/.zshrc"
	fi
fi

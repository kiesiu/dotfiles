# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
	PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export TERM="xterm-256color"
export COLORTERM="truecolors"

export PS1="\e[0;34m\u@\h \e[0;35m\W \e[0m\$ "
if [ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]; then
	. /usr/share/git-core/contrib/completion/git-prompt.sh
fi
if type __git_ps1 &>/dev/null; then
	export GIT_PS1_SHOWDIRTYSTATE=1
	export GIT_PS1_SHOWUNTRACKEDFILES=1
	export PROMPT_COMMAND='__git_ps1 "\[\e[0;34m\]\u@\h \[\e[0;35m\]\W\[\e[0;32m\]" " \[\e[0m\]\\\$ "'
fi

# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

source $HOME/.config/shconf/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"

PS1='\[\e[1;37m\][\[\e[1;31m\]\u@\h \[\e[1;33m\]\W\[\e[1;37m\]]\[\e[1;30m\]$(__git_ps1 " (%s)")\[\e[1;32m\]\$ \[\e[0m\]'
# PS1='\[\e[1;36m\](\A)\[\e[0m\]-\[\e[1;31m\]{\u@\h}\[\e[0m\]-\[\e[1;33m\][\W]\[\e[1;31m\]\[\e[1;32m\]\$\[\e[0m\] '
# User specific aliases and functions
alias vi='vimx'
alias vim='vimx'
alias ls='ls --color=auto -F'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/paewe/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/paewe/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/paewe/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/paewe/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


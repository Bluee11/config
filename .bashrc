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

# User specific aliases and functions

export PS1="\[\033[38;5;33m\]\u\[$(tput sgr0)\]\[\033[38;5;14m\][\w]\[$(tput sgr0)\]:\\$ \[$(tput sgr0)\]"

#bpytop - bashtop
alias bashtop="bpytop"
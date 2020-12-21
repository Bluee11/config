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

#Bashtop
alias bashtop="bpytop"

# I use this to reset my mic playback incase multiple are running at the same time.
alias mic="pactl unload-module module-loopback; pactl load-module module-loopback latency_msec=1"

# This is to run a Discord bot that I use on my server.
alias Blueebot="cd ~/Documents/Bluee/BlueeBot; python3 BlueeBotv4.py"

#this is for EDMC (a tool for Elite:Dangerous)
alias EDMC="cd ~/Documents/Elite\ Dangerous/EDMarketConnector/; ./EDMarketConnector.py"

#This is to start Alt1 Toolkit (a Runescape tool)
alias Alt1="cd Documents/Alt1; ./alt1run.sh"

exec fish

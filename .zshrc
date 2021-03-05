# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -Uz compinit promptinit
compinit
promptinit

autoload -Uz tetriscurses

#PROMPT='%F{#0087BD}%n%f@%F{#20B2AA}%m%f %F{#9A4EAE}%B%~%b%f %# '
PROMPT='%F{#0087BD}%n%f%F{#9A4EAE}[%B%~%b]%f'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

function chpwd() {
        emulate -L zsh
            ls 
        }

setopt autocd

#Aliases
alias sudo="sudo "
alias ls="ls --color=auto --group-directories-first"
alias ip="ip -c"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias diff="colordiff"
alias bashtop="bpytop"
alias mic="pactl unload-module module-loopback; pactl load-module module-loopback latency_msec=1"
alias yay="paru"
alias clean="paru -R $(paru -Qtdq)"


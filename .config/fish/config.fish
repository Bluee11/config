#Vi mode
fish_vi_key_bindings

##Theme Config
set -g theme_display_git no
set -g theme_display_user yes
set -g theme_title_use_abbreviated_path no
set -g theme_color_scheme base16-dark
set -g theme_display_date no

##Aliases
alias bashtop='bpytop'

alias mic='pactl unload-module module-loopback; pactl load-module module-loopback latency_msec=1'

alias Blueebot='cd ~/Documents/Bluee/BlueeBot; python3 BlueeBotv4.py'

alias EDMC='python3 ~/Documents/Elite\ Dangerous/EDMarketConnector/EDMarketConnector.py'

alias Alt1='cd ~/Documents/Alt1; bash alt1run.sh'

# Created by `userpath` on 2020-10-28 21:49:58
set PATH $PATH /home/bluee/.local/bin

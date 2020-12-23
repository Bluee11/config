#Vi mode
fish_vi_key_bindings

##Theme Config
set -g theme_display_git no 
set -g theme_display_user yes
set -g theme_title_use_abbreviated_path no
set -g theme_color_scheme base16-dark
set -g theme_display_date no

##Aliases
#The main reason for this line is because Bashtop is easier to say than bpytop.
alias bashtop='bpytop'

#This disables any active loopback modules that play the active microphone through heaphones/speakers, and then enables just one, just incase you somehow loaded more than one.
alias mic='pactl unload-module module-loopback; pactl load-module module-loopback latency_msec=1'

#This is a bot I run on a Discord server. You can remove this.
alias Blueebot='cd ~/Documents/Bluee/BlueeBot; python3 BlueeBotv4.py'

#This is a third party tool for the game "Elite: Dangerous". You can remove this.
alias EDMC='python3 ~/Documents/Elite\ Dangerous/EDMarketConnector/EDMarketConnector.py'

#This is a third party tool for the game "Runescape". You can remove this.
alias Alt1='cd ~/Documents/Alt1; bash alt1run.sh'

# Created by `userpath` on 2020-10-28 21:49:58
set PATH $PATH /home/bluee/.local/bin

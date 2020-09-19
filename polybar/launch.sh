#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload BlueeBar &
  done
else
  polybar --reload BlueeBar &
fi

# Launch Polybar, using default config location ~/.config/polybar/config
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bar1 >>/tmp/polybar1.log 2>&1 & disown
polybar bar1 >>/tmp/polybar2.log 2>&1 & disown

echo "Polybar launched..."

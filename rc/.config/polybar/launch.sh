#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Wait until all processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Gather connected monitors
monitors=($(xrandr --query | grep " connected" | cut -d" " -f1))
primary_monitor="${monitors[0]}"  # First monitor as primary
secondary_monitors=("${monitors[@]:1}")  # All other monitors as secondary

# Gather connected networks
ETH_INTERFACE=$(ip link show | grep -oP '(?<=: )[e][nlpxs0-9]+(?=:)' | head -n 1)
export ETH_INTERFACE

WLAN_INTERFACE=$(ip link show | grep -oP '(?<=: )[w][nlpxs0-9]+(?=:)' | head -n 1)
export WLAN_INTERFACE

# Launch Polybar on primary monitor
echo "---" | tee -a /tmp/polybar1.log
MONITOR=$primary_monitor polybar example 2>&1 | tee -a /tmp/polybar1.log & disown

# Launch Polybar on all other connected monitors
for m in "${secondary_monitors[@]}"; do
    echo "---" | tee -a /tmp/polybar$m.log
    MONITOR_EXT=$m polybar external 2>&1 | tee -a /tmp/polybar$m.log & disown
done

echo "Bars launched..."

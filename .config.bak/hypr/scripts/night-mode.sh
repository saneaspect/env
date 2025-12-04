#!/bin/bash

# Check if wlsunset is already running
if pgrep -x "hyprsunset" > /dev/null; then
    # Kill wlsunset if it's running (switch to day mode)
    pkill hyprsunset
    notify-send "Night Light" "Off" -u "low"
else
    # Start wlsunset for night mode
    hyprsunset --temperature 4000 &
    notify-send "Night Light" "On" -u "low"
fi


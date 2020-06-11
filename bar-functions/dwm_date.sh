#!/bin/sh

# A dwm_bar function that shows the current date and time

dwm_date () {
    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        printf "📆 %s" "$(date "+%a %d-%m-%y %T")"
    else
        time=$(date "+%T" | awk -F: '{print $1":"$2}')
        day=$(date "+%d")

        printf "%s" "$day <<$time>>"
    fi
    printf "%s\n" "$SEP2"
}

dwm_date

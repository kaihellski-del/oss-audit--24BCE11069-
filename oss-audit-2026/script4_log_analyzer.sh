#!/bin/bash

LOGFILE=${1:-/var/log/syslog}
KEYWORD=${2:-error}
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File does not exist."
    exit 1
fi

if [ ! -s "$LOGFILE" ]; then
    echo "Error: File is empty."
    exit 1
fi

MATCHES=()

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
        MATCHES+=("$LINE")
    fi
done < "$LOGFILE"

echo "Keyword found $COUNT times."
printf '%s\n' "${MATCHES[@]}" | tail -n 5

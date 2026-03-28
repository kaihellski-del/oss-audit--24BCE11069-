#!/bin/bash

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/etc/gitconfig")

printf "%-20s | %-20s | %s\n" "TARGET PATH" "PERMISSIONS" "SIZE"
echo "--------------------------------------------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -e "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        printf "%-20s | %-20s | %s\n" "$DIR" "$PERMS" "$SIZE"
    else
        printf "%-20s | %-20s | %s\n" "$DIR" "Not Found" "N/A"
    fi
done

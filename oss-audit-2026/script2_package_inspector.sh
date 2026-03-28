#!/bin/bash

PACKAGE=${1:-git}

echo "----------------------------------------"
echo "Checking package: $PACKAGE"
echo "----------------------------------------"

# works for Ubuntu/Debian
if dpkg -l | grep -q "$PACKAGE"; then
    if dpkg -l | grep -qw "$PACKAGE"; then
        VERSION=$(dpkg -s "$PACKAGE" | grep '^Version:' | awk '{print $2}')
        echo "[+] Installed (Debian-based)"
        echo "Version: $VERSION"
    else
        echo "[-] Package not installed"
    fi

elif command -v rpm >/dev/null 2>&1; then
    if rpm -q "$PACKAGE" >/dev/null 2>&1; then
        VERSION=$(rpm -qi "$PACKAGE" | grep Version | awk '{print $3}')
        echo "[+] Installed (RHEL-based)"
        echo "Version: $VERSION"
    else
        echo "[-] Package not installed"
    fi
else
    echo "Package manager not supported"
fi

echo "------------------------------------------"

case $PACKAGE in
    git)
        echo "Git: Created by Linus Torvalds in 2005."
        ;;
    *)
        echo "Open-source package"
        ;;
esac

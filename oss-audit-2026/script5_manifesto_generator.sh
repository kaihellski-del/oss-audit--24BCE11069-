#!/bin/bash

read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. What does digital freedom mean to you? " FREEDOM

OUTPUT="manifesto_$(whoami).txt"

echo "MY PERSONAL OPEN SOURCE MANIFESTO" > "$OUTPUT"
echo "Tool I rely on: $TOOL" >> "$OUTPUT"
echo "Freedom means: $FREEDOM" >> "$OUTPUT"

echo "[+] Saved to: $(pwd)/$OUTPUT"
cat "$OUTPUT"

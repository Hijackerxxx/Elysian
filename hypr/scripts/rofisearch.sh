#!/bin/bash
fd -H '' ~ --max-depth 6 --absolute-path | \
rofi -dmenu -i -p "🔍 Files & Folders: " | \
xargs -d '\n' -r xdg-open

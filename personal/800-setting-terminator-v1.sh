#!/bin/bash
set -e

[ -d $HOME"/.config/terminator" ] || mkdir -p $HOME"/.config/terminator"

d="~/.config/terminator/"
mkdir -p "$d" && cp -r "./personal/settings/terminator/config" "$d"

echo "################################################################"
echo "########       terminator  settings installed     ##############"
echo "################################################################"

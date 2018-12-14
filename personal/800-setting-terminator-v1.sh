#!/bin/bash
set -e

[ -d $HOME"/.config/terminator" ] || mkdir -p $HOME"/.config/terminator"

cp settings/terminator/config ~/.config/terminator/

echo "################################################################"
echo "########       terminator  settings installed     ##############"
echo "################################################################"

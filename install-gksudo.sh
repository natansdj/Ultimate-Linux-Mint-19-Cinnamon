#!/bin/bash

GKSU_FILE="/usr/local/bin/gksudo"
[[ -n "$GKSU_FILE" ]] && echo "pkexec env DISPLAY=\$DISPLAY XAUTHORITY=\$XAUTHORITY \$@" | sudo tee "$GKSU_FILE" > /dev/null
sudo chmod 755 $GKSU_FILE

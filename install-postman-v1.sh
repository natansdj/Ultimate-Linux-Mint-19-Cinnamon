#!/bin/bash
#set -e

POSTMANTAR="postman-latest-x64.tar.gz"
POSTMANDIR="/opt/"
rm tmp/$POSTMANTAR

if [ ! -d "$POSTMANTAR" ]; then
    wget https://dl.pstmn.io/download/latest/linux64 -O /tmp/$POSTMANTAR
fi


if [ -d "$POSTMANDIR" ]; then
    sudo rm -rf $POSTMANDIR
fi

###Create dir if not exists
[ -d "$POSTMANDIR" ] || sudo mkdir -p $POSTMANDIR

sudo tar -xzf /tmp/$POSTMANTAR -C "$POSTMANDIR"
sudo ln -s $POSTMANDIRPostman/Postman /usr/local/bin/postman
desktop-file-install --dir=$HOME/.local/share/applications ./personal/settings/postman/postman.desktop

# rm /tmp/$POSTMANTAR


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"

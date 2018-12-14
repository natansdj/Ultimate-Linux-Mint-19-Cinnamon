#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# Problem solving commands

# Read before using it.
# https://www.atlassian.com/git/tutorials/undoing-changes/git-reset
# git reset --hard orgin/master
# ONLY if you are very sure and no coworkers are on your github.

# Command that have helped in the past
# Force git to overwrite local files on pull - no merge
# git fetch all
# git push --set-upstream origin master
# git reset --hard orgin/master


# installing git if not installed for specific distro's

if ! location="$(type -p "git")" || [ -z "git" ]; then

	echo "#################################################"
	echo "installing git for this script to work"
	echo "#################################################"

  	sudo apt install git -y
	# check if apt-git is installed
	if which apt-get > /dev/null; then

		sudo apt-get install -y git

	fi

	# check if pacman is installed
	if which pacman > /dev/null; then

		sudo pacman -S --noconfirm git

	fi

	# check if eopkg is installed
	if which eopkg > /dev/null; then

		sudo eopkg -y install git

	fi

fi

#setting up git
#https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config

sudo apt-get install libgnome-keyring-dev
cd /usr/share/doc/git/contrib/credential/gnome-keyring
sudo make

cd $HOME

#git init
git config --global user.name "natan"
git config --global user.email "natansidjabat@gmail.com"
git config --global core.autocrlf "input"
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global alias.patch "!git --no-pager diff --no-color"
git config --global alias.permission-reset "!git diff -p HEAD~1 | grep -E \"^(diff|old mode|new mode)\" | sed -e \"s/^old/NEW/;s/^new/old/;s/^NEW/new/\" | git apply"
#sudo git config --system core.editor nano
git config --global credential.helper "/usr/share/doc/git/contrib/credential/gnome-keyring/git-credential-gnome-keyring"
git config --global http.postBuffer "524288000 #default : 1M"
git config --global http.maxRequestBuffer "100000000 #default : 10M"
#git config --global credential.helper 'cache --timeout=18000'
#git config --global push.default simple


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"

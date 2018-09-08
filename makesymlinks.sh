#!/bin/bash
###############################
# install.sh
# This script create simlinks from the home directory to any desired dotfiles in ~/dotfiles
###############################

################ VARIABLES (to be changed on new boxes)

dir=~/dotfiles
olddir=~/dotfiles_old
files="bashrc bash_profile vimrc xprofile xinitrc Xdefaults Xauthority viminfo profile"

###############

# Create dotfiles_old in the home directory
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# Change the the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# Move any existing dotfiles in the ~ to dotfiles_old directory, then create symlinks
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$files ~/dotfiles_old/
	echo "...done"
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done


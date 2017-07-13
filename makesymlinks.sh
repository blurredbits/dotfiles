#!/bin/bash

###########################################
# This script creates symlinks from the
# home directory to any desired dotfiles
# in ~/dotfiles
##########################################

# Variables

dir=~/dotfiles           # dotfiles directory
olddir=~/dotfiles_old    # old dotfiles backup directory
files="bash_profile gitconfig gitignore pull push railsrc gitignore_global gemrc eslintrc eslintignore git-prompt.sh"   # list of files/folder to symlink in homedir

# Create dotfiles_old in homedir
echo "Create $olddir for back of any existing dotfiles in ~"
mkdir -p $olddir
echo "...and done!"

# Change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...and done!"

# Move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/.$file ~/dotfiles_old
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/.$file
done

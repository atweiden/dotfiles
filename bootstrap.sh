#! /bin/bash

# Setup basics, get Vundle
mkdir -p $HOME/.src/dotfiles/_vim{/.backups,/.swaps,/.tmp,}
git clone https://github.com/gmarik/vundle $HOME/.src/dotfiles/_vim/bundle/vundle

# Backup important dotfiles
for dotfile in $HOME/.ackrc $HOME/.bashrc $HOME/.bash_logout $HOME/.bash_profile $HOME/.config $HOME/.conkyrc $HOME/.conkyrc1 $HOME/.dunstrc $HOME/.functions $HOME/.gitconfig $HOME/.gitignore $HOME/.gitattributes $HOME/.gnupg $HOME/.hgignore $HOME/.hgrc $HOME/.iex $HOME/.jshintrc $HOME/.psqlrc $HOME/.screenrc $HOME/.tmux $HOME/.vim $HOME/.vimrc $HOME/.vimencrypt $HOME/.Xdefaults $HOME/.xinitrc $HOME/.xsession; do mv $dotfile ${dotfile}.bak

# Setup symbolic links
ln -s $HOME/.src/dotfiles/_ackrc $HOME/.ackrc
ln -s $HOME/.src/dotfiles/_bashrc-local $HOME/.bashrc
ln -s $HOME/.src/dotfiles/_bash_logout $HOME/.bash_logout
ln -s $HOME/.src/dotfiles/_bash_profile $HOME/.bash_profile
ln -s $HOME/.src/dotfiles/_config $HOME/.config
ln -s $HOME/.src/dotfiles/_conkyrc $HOME/.conkyrc
ln -s $HOME/.src/dotfiles/_conkyrc1 $HOME/.conkyrc1
ln -s $HOME/.src/dotfiles/_dunstrc $HOME/.dunstrc
ln -s $HOME/.src/dotfiles/_functions.d $HOME/.functions.d
ln -s $HOME/.src/dotfiles/_gitignore $HOME/.gitignore
ln -s $HOME/.src/dotfiles/_gitconfig $HOME/.gitconfig
ln -s $HOME/.src/dotfiles/_gitattributes $HOME/.gitattributes
ln -s $HOME/.src/dotfiles/_gnupg $HOME/.gnupg
ln -s $HOME/.src/dotfiles/_hgignore $HOME/.hgignore
ln -s $HOME/.src/dotfiles/_hgrc $HOME/.hgrc
ln -s $HOME/.src/dotfiles/_iex $HOME/.iex
ln -s $HOME/.src/dotfiles/_jshintrc $HOME/.jshintrc
ln -s $HOME/.src/dotfiles/_psqlrc $HOME/.psqlrc
ln -s $HOME/.src/dotfiles/_screenrc $HOME/.screenrc
ln -s $HOME/.src/dotfiles/_tmuxconf $HOME/.tmux.conf
ln -s $HOME/.src/dotfiles/_vim $HOME/.vim
ln -s $HOME/.src/dotfiles/_vimrc $HOME/.vimrc
ln -s $HOME/.src/dotfiles/_vimencrypt $HOME/.vimencrypt
ln -s $HOME/.src/dotfiles/_Xdefaults $HOME/.Xdefaults
ln -s $HOME/.src/dotfiles/_xinitrc $HOME/.xinitrc
chmod +x $HOME/.xinitrc
ln -s $HOME/.src/dotfiles/_xsession $HOME/.xsession
chmod +x $HOME/.xsession

# Configure f.lux
echo "f.lux needs your zipcode for screen warmth timing"
echo -n "Enter your zipcode: "
read zipcode
sed -i "s#97210#$zipcode#" _config/openbox/autostart.sh

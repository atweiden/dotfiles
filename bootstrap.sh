#! /bin/bash

# Setup basics, get Vundle
mkdir -p $HOME/.src/dotfiles/_vim{/.backups,/.swaps,/.tmp,}
git clone https://github.com/gmarik/vundle $HOME/.src/dotfiles/_vim/bundle/vundle

# Backup important dotfiles
mv $HOME/.ackrc $HOME/.ackrc.bak
mv $HOME/.bashrc $HOME/.bashrc.bak
mv $HOME/.bash_logout $HOME/.bash_logout.bak
mv $HOME/.bash_profile $HOME/.bash_profile.bak
mv $HOME/.config $HOME/.config.bak
mv $HOME/.conkyrc $HOME/.conkyrc.bak
mv $HOME/.conkyrc1 $HOME/.conkyrc1.bak
mv $HOME/.dunstrc $HOME/.dunstrc.bak
mv $HOME/.functions.d $HOME/.functions.d.bak
mv $HOME/.gitconfig $HOME/.gitconfig.bak
mv $HOME/.gitignore $HOME/.gitignore.bak
mv $HOME/.gitattributes $HOME/.gitattributes.bak
mv $HOME/.gnupg $HOME/.gnupg.bak
mv $HOME/.hgignore $HOME/.hgignore.bak
mv $HOME/.hgrc $HOME/.hgrc.bak
mv $HOME/.iex $HOME/.iex.bak
mv $HOME/.jshintrc $HOME/.jshintrc.bak
mv $HOME/.screenrc $HOME/.screenrc.bak
mv $HOME/.tmux.conf $HOME/.tmux.conf.bak
mv $HOME/.vim $HOME/.vim.bak
mv $HOME/.vimrc $HOME/.vimrc.bak
mv $HOME/.vimencrypt $HOME/.vimencrypt.bak
mv $HOME/.Xdefaults $HOME/.Xdefaults.bak
mv $HOME/.xinitrc $HOME/.xinitrc.bak
mv $HOME/.xsession $HOME/.xsession.bak

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

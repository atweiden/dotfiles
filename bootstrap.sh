#! /bin/bash

# -----------------------------------------------------------------------------
# bootstrap: quick and easy dotfiles setup
# -----------------------------------------------------------------------------


# -----------------------------------------------------------------------------
# basics

mkdir -p $HOME/.vim/{.backups,.swaps,.tmp,}
git clone https://github.com/gmarik/vundle $HOME/.vim/bundle/vundle


# -----------------------------------------------------------------------------
# backup

for dotfile in $HOME/.ackrc \
               $HOME/.bashrc \
               $HOME/.bash_logout \
               $HOME/.bash_profile \
               $HOME/.config \
               $HOME/.conkyrc \
               $HOME/.conkyrc1 \
               $HOME/.dunstrc \
               $HOME/.functions \
               $HOME/.gitconfig \
               $HOME/.gitignore \
               $HOME/.gitattributes \
               $HOME/.gnupg \
               $HOME/.hgignore \
               $HOME/.hgrc \
               $HOME/.iex \
               $HOME/.jshintrc \
               $HOME/.psqlrc \
               $HOME/.screenrc \
               $HOME/.tmux \
               $HOME/.vim \
               $HOME/.vimrc \
               $HOME/.vimencrypt \
               $HOME/.Xdefaults \
               $HOME/.xinitrc \
               $HOME/.xsession; do echo "backing up $dotfile (if it exists)"
                                   mv $dotfile ${dotfile}.bak 2&>/dev/null;
done


# -----------------------------------------------------------------------------
# f.lux

echo "f.lux requests your zipcode for screen warmth timing"
echo -n "Enter your zipcode: "
read zipcode
sed -i "s#97210#$zipcode#" _config/openbox/autostart.sh


# -----------------------------------------------------------------------------
# links

for dotfile in _ackrc \
               _bashrc-local \
               _bash_logout \
               _bash_profile \
               _config \
               _conkyrc \
               _conkyrc1 \
               _dunstrc \
               _functions.d \
               _gitignore \
               _gitconfig \
               _gitattributes \
               _gnupg \
               _hgignore \
               _hgrc \
               _iex \
               _jshintrc \
               _psqlrc \
               _screenrc \
               _tmux \
               _vim \
               _vimrc \
               _vimencrypt \
               _Xdefaults \
               _xinitrc \
               _xsession; do SRC=\"$(readlink -f $dotfile)\"
                                  DEST=\"$HOME/.${SRC##*_}\"
                                          ln -s $SRC $DEST;
done

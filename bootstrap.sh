#!/bin/bash

# -----------------------------------------------------------------------------
# bootstrap: quick and easy dotfiles setup
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
# settings

name="Andy Weidenbaum"     # Name    (GitHub)
email="archbaum@gmail.com" # Email   (GitHub)
github="atweiden"          # Account (GitHub)
zipcode=97210              # Zipcode (f.lux)


# -----------------------------------------------------------------------------
# dirs

mkdir -p $HOME/.src                          \
         $HOME/Desktop                       \
         $HOME/Documents                     \
         $HOME/Downloads                     \
         $HOME/Graphics                      \
         $HOME/Music                         \
         $HOME/Projects


# -----------------------------------------------------------------------------
# backup

for dotfile in $HOME/.ackrc                                                \
               $HOME/.bashrc                                               \
               $HOME/.bash_logout                                          \
               $HOME/.bash_profile                                         \
               $HOME/.bin                                                  \
               $HOME/.config                                               \
               $HOME/.conkyrc                                              \
               $HOME/.conkyrc1                                             \
               $HOME/.dunstrc                                              \
               $HOME/.functions                                            \
               $HOME/.gitconfig                                            \
               $HOME/.gitignore                                            \
               $HOME/.gitattributes                                        \
               $HOME/.gnupg                                                \
               $HOME/.hgignore                                             \
               $HOME/.hgrc                                                 \
               $HOME/.iex                                                  \
               $HOME/.jshintrc                                             \
               $HOME/.psqlrc                                               \
               $HOME/.screenrc                                             \
               $HOME/.tmux                                                 \
               $HOME/.vim                                                  \
               $HOME/.vimrc                                                \
               $HOME/.vimencrypt                                           \
               $HOME/.Xdefaults                                            \
               $HOME/.xinitrc                                              \
               $HOME/.xsession; do echo "backing up $dotfile (if it exists)"
                                   mv $dotfile ${dotfile}.bak 2>/dev/null;
done


# -----------------------------------------------------------------------------
# links

for dotfile in _ackrc                                      \
               _bashrc                                     \
               _bash_logout                                \
               _bash_profile                               \
               _bin                                        \
               _config                                     \
               _conkyrc                                    \
               _conkyrc1                                   \
               _dunstrc                                    \
               _functions.d                                \
               _gitignore                                  \
               _gitconfig                                  \
               _gitattributes                              \
               _gnupg                                      \
               _hgignore                                   \
               _hgrc                                       \
               _iex                                        \
               _jshintrc                                   \
               _psqlrc                                     \
               _screenrc                                   \
               _tmux                                       \
               _vim                                        \
               _vimrc                                      \
               _vimencrypt                                 \
               _Xdefaults                                  \
               _xinitrc                                    \
               _xsession; do SRC=\"$(readlink -f $dotfile)\"
                                  DEST=\"$HOME/.${SRC##*_}\"
                                          ln -s $SRC $DEST;
done


# -----------------------------------------------------------------------------
# vim

mkdir -p $HOME/.vim/{.backups,.swaps,.tmp,.undo,}
#git clone https://github.com/gmarik/vundle $HOME/.vim/bundle/vundle


# -----------------------------------------------------------------------------
# github

sed -i "s#yourname#$name#"         $HOME/.gitconfig
sed -i "s#youremail#$email#"       $HOME/.gitconfig
sed -i "s#yourgithubacct#$github#" $HOME/.gitconfig
sed -i "s#yourname#$name#"         $HOME/.hgrc
sed -i "s#youremail#$email#"       $HOME/.hgrc


# -----------------------------------------------------------------------------
# f.lux

sed -i "s#97210#$zipcode#"         $HOME/.config/openbox/autostart.sh

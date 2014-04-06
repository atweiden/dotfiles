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
               $HOME/.hgext                                                \
               $HOME/.hgignore                                             \
               $HOME/.hgmap                                                \
               $HOME/.hgrc                                                 \
               $HOME/.iex                                                  \
               $HOME/.jshintignore                                         \
               $HOME/.jshintrc                                             \
               $HOME/.psqlrc                                               \
               $HOME/.screenrc                                             \
               $HOME/.tmux.conf                                            \
               $HOME/.vim                                                  \
               $HOME/.vimrc                                                \
               $HOME/.vimencrypt                                           \
               $HOME/.Xdefaults                                            \
               $HOME/.xinitrc                                              \
               $HOME/.xsession; do echo "backing up $dotfile (if it exists)"
                                   if [[ -f $dotfile ]]; then
                                     mv $dotfile ${dotfile}.bak
                                   fi
done


# -----------------------------------------------------------------------------
# links

for dotfolder in bin         \
                 config      \
                 functions.d \
                 gnupg       \
                 hgext       \
                 hgmap       \
                 ssh         \
                 vim; do cp -R _${dotfolder} $HOME/.${dotfolder}
done

for dotfile in ackrc         \
               bash_logout   \
               bash_profile  \
               bashrc        \
               conkyrc       \
               conkyrc1      \
               dunstrc       \
               gitattributes \
               gitconfig     \
               gitignore     \
               hgignore      \
               hgrc          \
               iex           \
               jshintignore  \
               jshintrc      \
               psqlrc        \
               screenrc      \
               tmux.conf     \
               vimencrypt    \
               vimrc         \
               Xdefaults     \
               xinitrc       \
               xsession; do cp _${dotfile} $HOME/.${dotfile}
done


# -----------------------------------------------------------------------------
# vim

mkdir -p $HOME/.vim/{.backups,.swaps,.tmp,.undo,}


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

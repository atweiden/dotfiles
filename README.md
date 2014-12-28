Dotfiles for Arch
=================

Screenshots
-----------

![Desktop](https://i.imgur.com/bEGxhbP.png)

![URxvt](https://i.imgur.com/ElJRxPs.png)


Installation
------------

```bash
git clone https://github.com/atweiden/dotfiles
cd dotfiles
./bootstrap.sh
```


Usage
-----

Log in and run `startx` to launch OpenBox.

**Keybindings**

*The Windows symbol key is the 'Super' key. For example,
<kbd>Windows+spacebar</kbd> opens the main menu. Right-click anywhere
on the desktop to open the main menu.*

Program shortcuts:

- <kbd>Super+space</kbd> : main menu
- <kbd>Super+t</kbd>     : LXTerminal (T)erminal
- <kbd>Super+f</kbd>     : PCManFM (F)ile manager
- <kbd>Super+e</kbd>     : Leafpad (E)ditor
- <kbd>Super+m</kbd>     : VLC (M)edia player
- <kbd>Super+w</kbd>     : Chromium (W)eb browser
- <kbd>Super+q</kbd>     : Force (Q)uit
- <kbd>Super+g</kbd>     : (g)Vim
- <kbd>Super+l</kbd>     : (L)ock screen
- <kbd>Super+r</kbd>     : Calculato(R)
- <kbd>Alt+F2</kbd>      : gmrun dialog (program launcher)
- <kbd>Alt+F3</kbd>      : dmenu (HUD-like program launcher with simple fuzzy completion)

Desktop shortcuts:

- <kbd>Super+a</kbd> : toggle maximize the current window
- <kbd>Super+h</kbd> : toggle fully expand the current window horizontally
- <kbd>Super+v</kbd> : toggle fully expand the current window vertically
- <kbd>Super+c</kbd> : center the current window
- <kbd>Super+Up</kbd>   : move the current window up
- <kbd>Super+Down</kbd> : move the current window down
- <kbd>Super+Right</kbd>: move the current window to the right
- <kbd>Super+Left</kbd> : move the current window to the left
- <kbd>Alt+Super+Arrow</kbd> : resize the current window
- <kbd>Alt+Shift+Arrow</kbd> : move the current window to a different desktop
- <kbd>Super+F1-F4</kbd> : switch to desktop #1-4

Mouse shortcuts:

- right-click anywhere on desktop: main menu
- mousewheel-scrolldown on app icon in lower panel: minimize app to lower panel
- mousewheel-scrollup on app icon in lower panel: restore app to size from minimized in lower panel
- right-click on app icon in lower panel: quit app / close app window


Recommended color themes for Vim
--------------------------------

#### Full support for Vim and Gvim

*These colors work well with Vim and Gvim, without any additional
configuration.*

- darcula
- eddie
- gruvbox
- [hybrid](https://i.imgur.com/SQL9D4c.png)
- [iceberg](https://i.imgur.com/8Iv1jUw.png)
- [jellyx](https://i.imgur.com/BVOdw4B.png)
- kongo
- lucius
- mirodark
- [molokai](https://i.imgur.com/sjDVniP.png)
- neverland
- [nighted](https://i.imgur.com/zpPx9x9.png)
- pencil
- scame (from vim-mimicpak)
- seoul256
- sorcerer
- [tomorrow](https://i.imgur.com/wvUeX29.png)
- wallaby
- [zenburn](https://i.imgur.com/jkGfXeF.png)

#### Gvim only

*Certain Gvim-only colors can work well in terminal Vim, but only if
you modify your terminal's colors to match. Others may not work in
terminal Vim no matter what you do.*

- base16
- baycomb
- briofita
- liquidcarbon
- nefertiti
- oceanlight
- psclone (from vim-mimicpak)
- solarized ([dark](https://i.imgur.com/Gw7vqLt.png)/[light](https://i.imgur.com/YEHys2H.png))
- vibrantink
- vimhut (from vim-mimicpak)

#### 8-color terminal only

*Only works if you modify your terminal's colors to match.*

- miro8

#### Custom

- Entering the command `:colorscheme custom` will black out the
  background, which is helpful if you prefer solid black backgrounds
  to the dark gray colors that are present in some themes. Thanks to
  [@jmcantrell](https://github.com/jmcantrell).


Credits
-------

- http://apaulodesign.com/vimrc.html
- http://static.askapache.com/askapache-bash-profile.txt
- http://dotfiles.github.com
- https://github.com/alessioalex/dotfiles
- https://github.com/begriffs/haskell-vim-now
- https://github.com/ciaranm/dotfiles
- https://github.com/cooldaemon/myhome
- https://github.com/drmikehenry/vimfiles
- https://github.com/ervandew/dotfiles
- https://github.com/Floby/vim-config
- https://github.com/gabrielelana/dotfiles
- https://github.com/gf3/dotfiles
- https://github.com/gmarik/vimfiles
- https://github.com/guns/haus
- https://github.com/haya14busa/dotfiles
- https://github.com/henrik/dotfiles
- https://github.com/ifschleife/dotfiles
- https://github.com/ivyl/vim-config
- https://github.com/jeremyjh/dotfiles
- https://github.com/jeroenjanssens/dotfiles
- https://github.com/jgors/configs
- https://github.com/jszakmeister/vimuser-jszakmeister
- https://github.com/junegunn/dotfiles
- https://github.com/kernelsmith/env-customization
- https://github.com/khughitt/dotfiles
- https://github.com/knewter/dotfiles
- https://github.com/kongo2002/dotfiles
- https://github.com/lervag/dotvim
- https://github.com/mathiasbynens/dotfiles
- https://github.com/nvie/vimrc
- https://github.com/phleet/dotfiles
- https://github.com/pjan/osx-dotfiles
- https://github.com/pocke/dotfiles
- https://github.com/prurigro/darkcloud-vimconfig
- https://github.com/rafi/.config
- https://github.com/saimn/dotfiles
- https://github.com/Schnouki/dotfiles
- https://github.com/Shougo/shougo-s-github
- https://github.com/sickill/dotfiles
- https://github.com/sjl/dotfiles
- https://github.com/sjn/dotfiles
- https://github.com/smith/vim-config
- https://github.com/sontek/dotfiles
- https://github.com/spf13/spf13-vim
- https://github.com/square/maximum-awesome
- https://github.com/ton/dotfiles
- https://github.com/wavded/dotfiles
- https://github.com/whatyouhide/dotfiles
- https://github.com/wnodom/wnodom-vim-environment
- https://github.com/xero/dotfiles


Licensing
---------

This is free and unencumbered public domain software. For more
information, see http://unlicense.org/ or the accompanying UNLICENSE file.

#!/bin/bash

# -----------------------------------------------------------------------------
# evp: open ~/.vim/plugs.vim and ~/.config/nvim/plugs.vim for editing
# -----------------------------------------------------------------------------

evp() {
local _vp="$HOME/.vim/plugs.vim"
local _nvp="$HOME/.config/nvim/plugs.vim"
$EDITOR "$_vp" "$_nvp"
}

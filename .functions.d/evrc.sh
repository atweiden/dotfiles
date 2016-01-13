#!/bin/bash

# -----------------------------------------------------------------------------
# evrc: open ~/.vimrc and ~/.config/nvim/init.vim for editing
# -----------------------------------------------------------------------------

evrc() {
local _vimrc="$HOME/.vimrc"
local _nvimrc="$HOME/.config/nvim/init.vim"
$EDITOR "$_vimrc" "$_nvimrc"
}

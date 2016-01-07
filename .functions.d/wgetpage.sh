#!/bin/bash

# -----------------------------------------------------------------------------
# wgetpage: wget complete Webpage
# -----------------------------------------------------------------------------

wgetpage() {
wget --html-extension --recursive --convert-links --page-requisites --no-parent $1
}

#!/bin/bash

# -----------------------------------------------------------------------------
# gfm2html: convert Github Flavored Markdown to HTML
# -----------------------------------------------------------------------------

gfm2html() {
pandoc --from=markdown_github --to=html5 -o "${1}.html" "${1}"
}

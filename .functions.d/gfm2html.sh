#!/bin/bash

# -----------------------------------------------------------------------------
# gfm2html: convert Github Flavored Markdown to HTML
# -----------------------------------------------------------------------------

gfm2html() {
if [[ -x /usr/bin/cmark ]]; then
  cmark --safe --to html "${1}" >| "${1}.html"
elif [[ -x /usr/bin/pandoc ]]; then
  pandoc --from=markdown_github --to=html5 -o "${1}.html" "${1}"
fi
}

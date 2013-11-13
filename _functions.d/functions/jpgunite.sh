#!/bin/bash

# -----------------------------------------------------------------------------
# jpgunite: convert jpgs to separate pdfs, then combine pdfs
# -----------------------------------------------------------------------------

function jpgunite {
  local file; for file in `find "$@" -type f -name "*.jpg"`; do cp ${file} ${file}.bak && convert ${file} ${file%.jpg}.pdf; done
  find "$@" -type f -name "*.pdf" -print0 | xargs -0 pdfunite # need to fix, overwrites
}

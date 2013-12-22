#!/bin/bash

for fnsh in `find ~/.functions.d/functions -type f -name "*.sh"`; do . $fnsh; done

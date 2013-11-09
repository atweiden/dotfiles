#!/bin/bash

local file; for file in `find ~/.functions.d/functions -type f -name "*.sh"`; do . $file; done

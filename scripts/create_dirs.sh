#!/bin/bash

file="$1"
awk -F "\"*,\"*" '{print $5 "/" $6}' ${file} | sed '1d;' | sed 's/[ \r]//g;' | xargs -I {} bash -c "mkdir -p {} && touch {}/.gitkeep && git add {}"

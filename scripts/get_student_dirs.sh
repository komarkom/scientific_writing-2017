#!/bin/bash

ls ./ | grep '[0-9]\+' | xargs -I group bash -c 'ls group | xargs -I student echo "group/student"'

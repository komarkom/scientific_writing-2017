#!/bin/bash

awk -F "\"*,\"*" '{print $'$2'}' $1 | sed '1d;'

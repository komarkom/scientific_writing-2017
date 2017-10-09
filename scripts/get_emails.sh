#!/bin/bash

./scripts/get_column_csv.sh $1 2 | sed 's/$/,/g' | tr -d '\n' | sed 's/.$//'
echo ""

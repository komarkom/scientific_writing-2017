#!/bin/bash

./scripts/get_column_csv.sh $1 4 | sed 's/$/,/g' | tr -d '\n' | sed 's/.$//'
echo ""

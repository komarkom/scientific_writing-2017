#!/bin/bash

csplit score.log '/^__$/' '{*}'
rm xx00

for i in $(ls xx*);
do
  name=$(cat $i| sed '2q;d' | sed 's|^Checking for directory "./||g;s|"||g;s|/|_|g')
  mv $i ${name}.log
done

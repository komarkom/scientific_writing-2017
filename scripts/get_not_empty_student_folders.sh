#!/bin/bash

prefix="https://github.com/moevm/scientific_writing-2017/tree/master"
for i in $(./scripts/get_student_dirs.sh)
do 
  is_empty=$(ls $i| wc -l )
  if [ "$is_empty" != "0" ]
  then
    echo "$(git log --pretty=format:"%ad %an" --date=iso-strict "$i" | grep -v 'Zaslavskiy' | sed -e 's/ [^ ]\+//g' | tail -1), $prefix/$i"
  fi
done | sort -r | sed -e 's/^[^ ]\+, //g'

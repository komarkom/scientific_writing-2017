#!/bin/bash

for i in $(./scripts/get_student_dirs.sh)
do 
  is_empty=$(ls $i| wc -l )
  if [ "$is_empty" != "0" ]
  then
    echo "$(git log --pretty=format:"%ad %an" --date=iso-strict "$i" | grep -v 'Zaslavskiy' | sed -e 's/ [^ ]\+//g' | tail -1), $i"

  fi
done | sort -r

#!/bin/bash

url_prefix="https://github.com/moevm/scientific_writing-2017/tree/master/"
echo "1_date paper_date ID URL"
for i in $(./scripts/get_student_dirs.sh)
do 
  is_empty=$(ls $i| wc -l )
  if [ "$is_empty" != "0" ]
  then
    first_commit_date="$(git log --pretty=format:"%ad %an" --date=iso-strict "$i" | grep -v 'Zaslavskiy' | sed -e 's/ [^ ]\+//g' | tail -1 | sed -e 's/T.*$//g')"
    paper_date="0"
    if ls ${i}/paper.md 1>/dev/null 2>/dev/null; 
    then
      paper_date="$(git log --pretty=format:"%ad %an" --date=iso-strict "$i/paper.md" | grep -v 'Zaslavskiy' | sed -e 's/ [^ ]\+//g' | tail -1 | sed -e 's/T.*$//g')"
    fi

    echo -e "${first_commit_date} ${paper_date} ${i} ${url_prefix}${i}"

  fi
done | sort -r

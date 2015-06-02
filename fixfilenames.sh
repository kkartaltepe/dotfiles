#!/usr/bin/bash
# convmv --notest -f shift-jis -t utf8 * Works!
for file in *
do
    shasum=`sha1sum "$file" | sed -e 's/ .*//g'`
    newfile=`echo "$file" | perl -pe 's/[^A-Za-z0-9_\-.]+(?!$)/_/g'`
    if [ -e "$newfile" ]; then
        mv --no-clobber "$file" "$shasum-$newfile"
    else
        mv --no-clobber "$file" "$newfile"
    fi
done

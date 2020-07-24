#!/usr/bin/env bash
files=$(find . | grep .md --color=never | sort)

declare -A items

for file in $files; do
	title=$(head -1 "$file" | sed 's/^# //')
	topic=$(echo "$file" | sed -r -e 's/\.\/(.*)\/.*/\1/')

	items["$topic"]+=" $title"

	(( count += 1 ))
done

echo "# Today I Learned

Today I Learned notes inspired by [simonw/til](https://github.com/simonw/til).

So far, I added $count notes.
"


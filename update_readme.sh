#!/usr/bin/env bash
files=$(find . | grep .md --color=never | sort)

for file in $files; do
	echo $file
	title=$(head -1 "$file" | sed 's/^# //')
	echo $title
	topic=$(sed -r -e 's/\.\/(.*)\/.*/\1/')
	echo $topic
done


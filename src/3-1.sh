#!/bin/bash
read -p "출력할 횟수를 입력하세요:" count
for (( i=0; i <= $count; i++ )); do
	echo "hello world"
done


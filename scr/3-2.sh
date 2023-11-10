#!/bin/bash

read -p "첫 번째 숫자를 입력하세요: " n1

read -p "두 번째 숫자를 입력하세요: " n2

read -p "연산자를 입력하세요(+ 또는 -): " op

if [ "$op" = "+" ]; then
	result=$((n1 + n2))
elif [ "$op" = "-" ]; then
	result=$((n1 - n2))
else
	echo "잘못된 연산자입니다."
	exit 1
fi
echo "계산 결과: $result"

#!/bin/bash

DB_FILE="DB.txt"

# 함수 정의: 이름으로 팀원 정보 검색
search_member_info() {
    echo "팀원의 이름을 입력하세요:"
    read search_name

    # DB 파일에서 해당 이름으로 검색하여 정보 출력
    result=$(grep "^$search_name|" "$DB_FILE")

    if [ -n "$result" ]; then
        echo "검색된 팀원 정보:"
        echo "$result"
    else
        echo "해당하는 팀원의 정보를 찾을 수 없습니다."
    fi
}

# 메인 스크립트
while true; do
    echo "1. 팀원 정보 검색"
    echo "2. 종료"
    read -p "원하는 작업을 선택하세요 (1/2): " choice

    case $choice in
        1)
            search_member_info
            ;;
        2)
            echo "프로그램을 종료합니다."
            exit 0
            ;;
        *)
            echo "올바른 선택지를 입력하세요."
            ;;
    esac
done

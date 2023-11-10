#!/bin/bash

DB_FILE="DB.txt"

# 함수 정의: DB에 팀원 정보 추가
add_member_info() {
    echo "팀원의 이름을 입력하세요:"
    read member_name

    echo "팀원의 생일 또는 전화번호를 입력하세요:"
    read member_info

    # 입력 받은 정보를 DB 파일에 추가
    echo "$member_name|$member_info" >> "$DB_FILE"

    echo "팀원 정보를 DB에 추가했습니다."
}

# 함수 정의: DB 초기화 (파일을 처음부터 다시 작성)
reset_db() {
    echo "DB를 초기화하고 새로운 파일을 생성합니다."

    # 파일이 이미 존재하면 삭제
    if [ -e "$DB_FILE" ]; then
        rm "$DB_FILE"
    fi

    touch "$DB_FILE"

    echo "DB를 초기화했습니다."
}

# 메인 스크립트
while true; do
    echo "1. 팀원 정보 추가"
    echo "2. DB 초기화 (처음부터 다시 작성)"
    echo "3. 종료"
    read -p "원하는 작업을 선택하세요 (1/2/3): " choice

    case $choice in
        1)
            add_member_info
            ;;
        2)
            reset_db
            ;;
        3)
            echo "프로그램을 종료합니다."
            exit 0
            ;;
        *)
            echo "올바른 선택지를 입력하세요."
            ;;
    esac
done

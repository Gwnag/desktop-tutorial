#!/bin/bash

# 함수 정의: 폴더 확인 및 생성
check_and_create_folder() {
    local folder_name=$1

    if [ ! -d "$folder_name" ]; then
        mkdir "$folder_name"
        echo "폴더 \"$folder_name\"를 생성했습니다."
    else
        echo "폴더 \"$folder_name\"가 이미 존재합니다."
    fi
}

# 함수 정의: 파일 생성
create_files() {
    local folder_name=$1
    cd "$folder_name" || exit 1

    for i in {1..5}; do
        touch "file$i.txt"
        echo "file$i.txt" >> file_list.txt
    done

    cd ..
    echo "파일을 생성했습니다."
}

# 함수 정의: 압축 및 해제
compress_and_extract() {
    local folder_name=$1

    tar -czvf "$folder_name.tar.gz" "$folder_name"
    echo "폴더를 압축했습니다."

    mkdir extracted_folder
    tar -xzvf "$folder_name.tar.gz" -C extracted_folder
    echo "압축을 해제했습니다."
}

# 메인 스크립트
read -p "폴더 이름을 입력하세요: " folder_name

# 폴더 확인 및 생성 함수 호출
check_and_create_folder "$folder_name"

# 파일 생성 함수 호출
create_files "$folder_name"

# 압축 및 해제 함수 호출
compress_and_extract "$folder_name"

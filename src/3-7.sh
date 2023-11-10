#!/bin/bash

read -p "폴더 이름을 입력하세요: " folder_name

# 폴더 생성
mkdir "$folder_name"
echo "폴더 \"$folder_name\"를 생성했습니다."

# 5개 이상의 파일 생성
cd "$folder_name" || exit 1

for i in {1..5}; do
    touch "file$i.txt"
    echo "file$i.txt" >> file_list.txt
done

# 파일 이름대로 하위 폴더 생성하고 각 폴더에 파일을 링크
while read -r file_name; do
    subfolder_name="${file_name%.*}_folder"
    mkdir "$subfolder_name"
    ln -s "$file_name" "$subfolder_name/$file_name"
    echo "하위 폴더 \"$subfolder_name\"를 생성하고, \"$file_name\"를 링크했습니다."
done < file_list.txt

echo "작업이 완료되었습니다."

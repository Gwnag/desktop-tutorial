#!/bin/bash

# 함수 정의: BMI 계산 및 비만 여부 판단
calculate_bmi() {
    local weight height bmi

    read -p "몸무게 (kg)를 입력하세요: " weight
    read -p "키 (m)를 입력하세요: " height

    # 입력값이 0인지 확인
    if [ "$weight" -eq 0 ] || [ "$height" -eq 0 ]; then
        echo "오류: 몸무게 또는 키는 0이 될 수 없습니다."
        return
    fi

    # BMI 계산
    bmi=$(echo "scale=2; $weight / ($height * $height)" | bc)

    # BMI 출력
    echo "BMI: $bmi"

    # BMI에 따른 비만 여부 판단
    if (( $(echo "$bmi >= 18.5 && $bmi < 23" | bc -l) )); then
        echo "정상 체중입니다."
    else
        echo "정상 체중이 아닙니다."
    fi
}

# 메인 스크립트
calculate_bmi


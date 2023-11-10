#!/bin/bash

# 내부 함수 정의
execute_command() {
  local command="$1"
  shift  # 첫 번째 인자인 명령어를 제외한 나머지를 인자로 사용

  echo "Executing command: $command with options: $@"

  # 입력받은 명령어 실행
  $command "$@"
}

# 사용자로부터 명령어와 인자 입력 받기
echo "Enter the command to execute:"
read user_command

# 사용자로부터 추가 옵션 입력 받기
echo "Enter additional options (if any):"
read user_options

# 입력받은 명령어와 옵션을 내부 함수에 전달
execute_command "$user_command" "$user_options"

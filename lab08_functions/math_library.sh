#!/bin/bash
# math_library.sh
# Reusable arithmetic functions, sourced by lab08.sh

add() {
  echo $(($1 + $2))
}

subtract() {
  echo $(($1 - $2))
}

multiply() {
  echo $(($1 * $2))
}

divide() {
  if [ $2 -ne 0 ]; then
    echo $(($1 / $2))
  else
    echo "Error: Division by zero"
  fi
}

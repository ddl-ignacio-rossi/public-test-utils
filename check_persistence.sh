#!/bin/bash

green() {
  echo -en "\033[0;32m"
  echo -n "$@"
  echo -e "\033[0m"
}

red() {
  echo -en "\033[0;31m"
  echo -n "$@"
  echo -e "\033[0m"
}

blue() {
  echo -en "\033[0;34m"
  echo -n "$@"
  echo -e "\033[0m"
}

blue "Checking tornado from requirements.txt"
python -c "import tornado; print(tornado.version)" || red "Tornado is not installed or not found."

blue "Checking pipdeptree"
which pipdeptree
if ! pipdeptree >/dev/null; then
  red "pipdeptree is not installed."
else
  green "pipdeptree is installed."
fi

blue "Checking R random package"
if ! R --no-save -e 'library(random); random::randomNumbers()'; then
  red "R random package is not installed or not found."
else
  green "R random package is installed."
fi

blue "Checking contents in home"
cat ~/persistence-test || red "Failed to show ~/persistence-test"

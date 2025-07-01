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

blue "Installing pipdeptree with pip: $(which pip)"
pip install pipdeptree

blue "Installing random package in R"
R --no-save -e 'install.packages("random")'

the_date=$(date)
blue "Creating file in home with date $the_date"
echo "$the_date" >~/persistence-test

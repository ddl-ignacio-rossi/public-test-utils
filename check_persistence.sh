#!/bin/bash

echo "Checking tornado from requirements.txt"
python -c "import tornado; print(tornado.version)" || echo "Tornado is not installed or not found."

echo "Checking pipdeptree"
which pipdeptree
if ! pipdeptree >/dev/null; then
  echo "pipdeptree is not installed."
else
  echo "pipdeptree is installed."
fi

echo "Checking R random package"
R --no-save -e 'library(random); random::randomNumbers()'

echo "Checking contents in home"
cat ~/persistence-test

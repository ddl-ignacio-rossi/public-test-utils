#!/bin/bash

echo "Installing pipdeptree with pip: $(which pip)"
pip install pipdeptree

echo "Installing random package in R"
R --no-save -e 'install.packages("random")'

echo "Creating file in home"
date >~/persistence-test

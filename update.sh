#! /bin/bash

LANG='en_GB'

git pull
source .venv/bin/activate
make clean
make publish
deactivate

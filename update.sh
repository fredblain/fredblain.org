#! /bin/bash

git pull
source .venv/bin/activate
make clean
make publish
deactivate

#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

git submodule update --init
cd $DIR/rmview
git checkout vnc
cd ..
pip install pipenv
pipenv install
pipenv run pyrcc5 -o $DIR/rmview/src/resources.py $DIR/rmview/resources.qrc

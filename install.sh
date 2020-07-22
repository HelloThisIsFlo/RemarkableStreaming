#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

git submodule update --init
cd $DIR/rmview
git checkout vnc
cd ..
pipenv install
pipenv run pyrcc5 -o $DIR/rmview/src/resources.py $DIR/rmview/resources.qrc

You now need to run the setup process on the remarkable. See read forget to run the setup
#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

cd $DIR

git submodule update --init

cd $DIR/rmview
git checkout vnc
cd ..

pipenv install

cd -

#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

cd $DIR
pipenv run python $DIR/rmview/src/rmview.py $DIR/rmview.json
cd -

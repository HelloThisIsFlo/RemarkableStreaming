#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd "$DIR"

scp $DIR/sleeping.png remarkable:/usr/share/remarkable
scp $DIR/suspended.png remarkable:/usr/share/remarkable

cd - >/dev/null

#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd "$DIR"

scp "$1" remarkable:/usr/share/remarkable/suspended.png

cd - >/dev/null

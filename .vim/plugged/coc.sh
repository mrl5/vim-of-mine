#!/bin/bash

START_DIR="$PWD"
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
URL="https://github.com/neoclide/coc.nvim.git"
BRANCH="release"

set -e -u -o pipefail
trap 'cleanup $? $LINENO' EXIT

cleanup() {
    if [ "$1" != "0" ]; then
        echo "Error $1 occurred on $2"
    fi
    cd "$START_DIR"
}

main() {
    local target_dir="$SCRIPT_DIR"
    cd "$target_dir"
    git clone --depth=1 --branch $BRANCH $URL
}

main "$@"

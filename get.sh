#!/bin/bash

START_DIR="$PWD"
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

set -e -u -o pipefail
trap 'cleanup $? $LINENO' EXIT

cleanup() {
    if [ "$1" != "0" ]; then
        echo "Error $1 occurred on $2"
    fi
    cd "$START_DIR"
}

main() {
    local target_dir="$1"
    cd "$target_dir"
    for url in $(grep -v '^#' src.txt); do
        git clone --depth=1 $url
    done
}

main "$@"

#!/usr/bin/env bash

CURRENT_DIR=$(realpath "$(dirname "$0")")

cd "$CURRENT_DIR/../results" || exit
jupyter notebook

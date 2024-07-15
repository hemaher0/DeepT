#!/usr/bin/env bash

# Activate conda

CURRENT_DIR=$(realpath "$(dirname "$0")")

cd "$CURRENT_DIR/../results" || exit
jupyter notebook

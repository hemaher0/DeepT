#!/usr/bin/env bash


CURRENT_DIR=$(realpath "$(dirname "$0")")

# Get results for Fast (2)
cd "$CURRENT_DIR/../scripts/fast" || exit
chmod +x run_zonotope_fast_2_few_samples.sh
bash run_zonotope_fast_2_few_samples.sh




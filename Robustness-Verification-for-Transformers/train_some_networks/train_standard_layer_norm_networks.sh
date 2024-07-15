#!/usr/bin/env bash

# Table 7: Fast vs BaF (Standard Layer Normalization)

# Activate conda

CURRENT_DIR=$(realpath "$(dirname "$0")")

cd "$CURRENT_DIR/../scripts/train" || exit
chmod +x train_networks_small_standard_layer_norm.sh
bash train_networks_small_standard_layer_norm.sh






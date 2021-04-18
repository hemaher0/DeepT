#!/usr/bin/env bash
cd ../..

norm=100
echo "The norm is $norm (e.g. inf)"

for nlayers in 3 6 12; do
    echo "Verifying network with $nlayers layers"

    python3 main.py --verify \
          --data sst \
          --dir sst_bert_small_$nlayers --num_layers $nlayers \
          --method baf \
          --p "$norm" \
          --empty_cache \
          --max_eps 0.04 \
          --one-word-per-sentence
done
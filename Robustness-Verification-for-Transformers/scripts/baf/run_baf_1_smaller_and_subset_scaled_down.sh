#!/usr/bin/env bash
cd ../..

norm=1
echo "The norm is $norm"

for nlayers in 3 6; do
    echo "Verifying network with $nlayers layers"

    python3 main.py --verify \
          --results-directory "results/l1l2_scaled_down" \
          --data sst \
          --dir sst_bert_smaller_$nlayers --num_layers $nlayers \
          --method baf \
          --p "$norm" \
          --empty_cache \
          --max_eps 0.04 \
          --one-word-per-sentence \
          --start-sentence 9
done
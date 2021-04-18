#!/usr/bin/env bash
cd ../..

norm=2
echo "The norm is $norm"

for nlayers in 6; do
    echo "Verifying network with $nlayers layers"

    python3 main.py --verify \
          --results-directory "results/deepT_fast_run_getting_started" \
          --data sst \
          --dir sst_bert_small_$nlayers --num_layers $nlayers \
          --method zonotope \
          --p $norm \
          --empty_cache \
          --max_eps 0.04 \
          --max-num-error-terms 14000 --error-reduction-method box \
          --add-softmax-sum-constraint \
          --one-word-per-sentence \

done
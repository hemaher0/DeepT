#!/usr/bin/env bash
cd ../..

LIRPA_CKPT="adversarially_trained_networks/bert_small_12/ckpt_7"
echo "Doing synonym attacks on checkpoint '$LIRPA_CKPT'"

python3 main.py --verify \
      --data sst \
      --lirpa-ckpt $LIRPA_CKPT \
      --num_layers 12 \
      --attack-type synonym \
      --method baf \
      --p 100 \
      --empty_cache \
      --max_eps 0.04 \
      --add-softmax-sum-constraint \
      --one-word-per-sentence
#!/usr/bin/env bash
cd ../..

#LIRPA_CKPT="adversarially_trained_networks/bert_small_12/ckpt_25"
#LIRPA_CKPT="adversarially_trained_networks/bert_small_12_v2/ckpt_25"
LIRPA_CKPT="adversarially_trained_networks/bert_small_12_adv/ckpt_20"
echo "Doing synonym attacks on checkpoint '$LIRPA_CKPT'"

python3 main.py --verify \
      --data sst \
      --lirpa-ckpt $LIRPA_CKPT \
      --num_layers 12 \
      --attack-type synonym \
      --method zonotope \
      --p 100 \
      --empty_cache \
      --max_eps 0.04 \
      --max-num-error-terms 14000 \
      --error-reduction-method box \
      --add-softmax-sum-constraint \
      --one-word-per-sentence \
      --batch-softmax-computation
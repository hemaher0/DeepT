#!/usr/bin/env bash
# Synonym attack results
CURRENT_DIR=$(realpath "$(dirname "$0")")


# Get results for Synonym attack (3 layer network)
cd "$CURRENT_DIR/../scripts/synonym" || exit
chmod +x run_synonym_attack_baf_smaller3.sh
bash run_synonym_attack_baf_smaller3.sh

cd "$CURRENT_DIR/../scripts/synonym" || exit
chmod +x run_synonym_attack_fast_smaller3.sh
bash run_synonym_attack_fast_smaller3.sh



#!/usr/bin/env bash




# Table 1: Fast vs BaF (normal)
# --results-directory "results/normal_case"

CURRENT_DIR=$(realpath "$(dirname "$0")")


# Get results for BaF (norms 1, 2, inf)
cd "$CURRENT_DIR/../scripts/baf" || exit
chmod +x run_baf_1.sh
bash run_baf_1.sh

cd "$CURRENT_DIR/../scripts/baf" || exit
chmod +x run_baf_2.sh
bash run_baf_2.sh


cd "$CURRENT_DIR/../scripts/baf" || exit
chmod +x run_baf_inf.sh
bash run_baf_inf.sh


# Get results for Fast (norms 1, 2, inf)
cd "$CURRENT_DIR/../scripts/fast" || exit
chmod +x run_zonotope_fast_1.sh
bash run_zonotope_fast_1.sh

cd "$CURRENT_DIR/../scripts/fast" || exit
chmod +x run_zonotope_fast_2.sh
bash run_zonotope_fast_2.sh


cd "$CURRENT_DIR/../scripts/fast" || exit
chmod +x run_zonotope_fast_inf.sh
bash run_zonotope_fast_inf.sh




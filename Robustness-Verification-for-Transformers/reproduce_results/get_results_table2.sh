#!/usr/bin/env bash




# Table 2: Fast vs BaF (Yelp)
# --results-directory "results/normal_case"

CURRENT_DIR=$(realpath "$(dirname "$0")")



# Get results for BaF (norms 1, 2, inf)
cd "$CURRENT_DIR/../scripts/baf" || exit
chmod +x run_baf_1_yelp.sh
bash run_baf_1_yelp.sh

cd "$CURRENT_DIR/../scripts/baf" || exit
chmod +x run_baf_2_yelp.sh
bash run_baf_2_yelp.sh


cd "$CURRENT_DIR/../scripts/baf" || exit
chmod +x run_baf_inf_yelp.sh
bash run_baf_inf_yelp.sh


# Get results for Fast (norms 1, 2, inf)
cd "$CURRENT_DIR/../scripts/fast" || exit
chmod +x run_zonotope_fast_1_yelp.sh
bash run_zonotope_fast_1_yelp.sh

cd "$CURRENT_DIR/../scripts/fast" || exit
chmod +x run_zonotope_fast_2_yelp.sh
bash run_zonotope_fast_2_yelp.sh


cd "$CURRENT_DIR/../scripts/fast" || exit
chmod +x run_zonotope_fast_inf_yelp.sh
bash run_zonotope_fast_inf_yelp.sh

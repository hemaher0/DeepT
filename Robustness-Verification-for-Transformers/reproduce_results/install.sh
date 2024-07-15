#!/usr/bin/env bash
echo "Step 2: activate conda and install the environment with the name 'py37_transformers_verifier'"
# shellcheck disable=SC1090

conda config --add channels pytorch
conda config --add channels conda-forge

conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia
conda install -y pytorch-pretrained-bert termcolor dataclasses pandas colorama tqdm scikit-learn nltk opt_einsum tensorflow matplotlib seaborn numpy notebook psutil

echo "Step 3: install the 'punkt' tokenizer required by NTLK"
python3 -c "import nltk; nltk.download('punkt')" || exit

echo "Step 4: download Yelp and SST datasets"
wget "https://www.dropbox.com/s/bpzgu93py6j2tq0/data.tar.gz?dl=0" -O data.tar.gz
mkdir -p ../../data
tar -xvzf data.tar.gz -C ../../data

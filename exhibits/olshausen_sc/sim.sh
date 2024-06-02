#!/bin/sh

################################################################################
# Simulate sparse coding on the MNIST database
################################################################################

DATA_DIR="../data/natural_scenes"
## can choose between either ista or sc_cauchy
MODEL_TYPE="ista" 
#MODEL_TYPE="sc_cauchy" 

rm -r exp/* ## clear out experimental directory
python train_patch_sc.py --dataX="$DATA_DIR/dataX.npy" --n_iter=200 \
	                 --model_type=$MODEL_TYPE --verbosity=0

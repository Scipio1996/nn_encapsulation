#!/bin/bash

start=`date +%s`

# train and test
CUDA_VISIBLE_DEVICES=2 python holly_capsule.py \
--experiment_name=base_101_EM_v3 \
--debug_mode=False \
--route=EM \
--dataset=cifar10 \
--cap_model=v0 \
--loss_form=margin


end=`date +%s`
runtime=$((end-start))

echo "Completed in" $runtime "seconds"

#!/usr/bin/env bash
nvidia-smi

export volna="FPL/FPL_based_on_CPS"
export OUTPUT_PATH="path to save checkpoints"
export snapshot_dir=$OUTPUT_PATH/snapshot

export NGPUS=8
export learning_rate=0.02
export batch_size=8
export snapshot_iter=2
export threshold=0.9
export weight='concave'

python -m torch.distributed.launch --nproc_per_node=$NGPUS train_FPL.py
export TARGET_DEVICE=7
python eval.py -e 100-140 -d 0-$TARGET_DEVICE --save_path $OUTPUT_PATH/results

# following is the command for debug
# export NGPUS=1
# export learning_rate=0.0025
# export batch_size=1
# python -m torch.distributed.launch --nproc_per_node=$NGPUS train.py --debug 1

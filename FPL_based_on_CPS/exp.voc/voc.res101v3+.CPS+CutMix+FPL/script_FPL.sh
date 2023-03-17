
#!/usr/bin/env bash

export volna="FPL/FPL_based_on_CPS/"
export NGPUS=8
export OUTPUT_PATH="path to save checkpoints"
export snapshot_dir=$OUTPUT_PATH/snapshot

export batch_size=8
export learning_rate=0.0025
export snapshot_iter=1
export threshold=0.90

python -m torch.distributed.launch --nproc_per_node=$NGPUS train_FPL.py
export TARGET_DEVICE=$[$NGPUS-1]
python eval.py -e 30-45 -d 0-$TARGET_DEVICE --save_path $OUTPUT_PATH/results

#!/usr/bin/env bash

CONFIG=$1
CHECKPOINT=$2
PORT=${PORT:-29500}

PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
# python -m torch.distributed.launch --nproc_per_node=1 --master_port=$((RANDOM + 10000)) \
#     $(dirname "$0")/test.py $CONFIG $CHECKPOINT --eval mIoU  --launcher pytorch ${@:3} --show-dir /home/vg245/SegVit/paintedImages --show
python $(dirname "$0")/test.py $CONFIG $CHECKPOINT --eval mIoU  --launcher pytorch ${@:3} --show-dir /home/jtk96/SegVit/paintedImages2 --show
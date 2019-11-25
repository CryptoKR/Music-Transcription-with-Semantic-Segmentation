#!/bin/bash

out_model=MusicNet-Attn-Note-Smooth-V1.0.2
out_model=ICASSP-2019-MusicNet-Note
epoch=10
early_stop=6

cd ..
python3 TrainModel.py MusicNet $out_model \
    --epoch $epoch           \
    --steps 2500             \
    --early-stop $early_stop \
    --train-batch-size 16    \
    --val-batch-size 16       
    #-i ./model/MusicNet-Attn-Note-Smooth-V1.0.1
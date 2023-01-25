#!/bin/bash
##
## BSD 3-Clause License
##
## This file is part of the Basalt project.
## https://gitlab.com/VladyslavUsenko/basalt.git
##
## Copyright (c) 2019-2021, Vladyslav Usenko and Nikolaus Demmel.
## All rights reserved.
##

set -e
set -x

DATASET_PATH=../../../Datasets/TUM-VI

DATASETS=(
outdoors4
#room1
#slides1
)


folder_name=eval_results_tumvi
#mkdir $folder_name



for d in ${DATASETS[$CI_NODE_INDEX-1]}; do
   ../../build/basalt_vio --dataset-path  $DATASET_PATH/$d --cam-calib ../../data/tumvi_512_eucm_calib.json \
        --dataset-type euroc --show-gui 0 --config-path ../../data/tumvi_512_config.json \
        --result-path $folder_name/vio_$d --save-trajectory tum

   mv trajectory.txt $folder_name/${d}_basalt_poses.txt

done

./gen_results_tumvi.py $folder_name > euroc_tumvi.txt
#--use-imu 0

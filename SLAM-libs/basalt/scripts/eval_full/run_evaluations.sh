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

DATASET_PATH=../../../Datasets/EuRoc

DATASETS=(MH_01_easy)

# MH_04_difficult MH_03_medium

folder_name=eval_results
#mkdir $folder_name



for d in ${DATASETS[$CI_NODE_INDEX-1]}; do
   ../../build/basalt_vio --dataset-path  $DATASET_PATH/$d --cam-calib ../../data/euroc_ds_calib.json  \
        --dataset-type euroc --show-gui 0 --config-path ../../data/euroc_config.json --use-imu 0 \
        --result-path $folder_name/vio_$d --marg-data eval_tmp_marg_data --save-trajectory tum

   mv trajectory.txt $folder_name/traj_vio_$d.txt

    ../../build/basalt_mapper --show-gui 0 --cam-calib ../../data/euroc_eucm_calib.json --config-path ../../data/euroc_config.json --marg-data eval_tmp_marg_data \
        --result-path $folder_name/mapper_$d

    ../../build/basalt_mapper --show-gui 0 --cam-calib ../../data/euroc_eucm_calib.json --config-path ../../data/euroc_config_no_weights.json --marg-data eval_tmp_marg_data \
        --result-path $folder_name/mapper_no_weights_$d

    ../../build/basalt_mapper --show-gui 0 --cam-calib ../../data//euroc_eucm_calib.json --config-path ../../data/euroc_config_no_factors.json --marg-data eval_tmp_marg_data \
        --result-path $folder_name/mapper_no_factors_$d

    rm -rf eval_tmp_marg_data
done

./gen_results.py $folder_name > euroc_results.txt
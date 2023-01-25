#!/bin/bash

pathDatasetTUM_VI='../../Datasets/TUM-VI'

echo "Launching Room 1 with Stereo-Inertial sensor"
#../Examples/Stereo-Inertial/stereo_inertial_tum_vi ../Vocabulary/ORBvoc.txt ../Examples/Stereo-Inertial/TUM-VI.yaml "$pathDatasetTUM_VI"/room1/mav0/cam0/data "$pathDatasetTUM_VI"/room1/mav0/cam1/data ../Examples/Stereo-Inertial/TUM_TimeStamps/dataset-room1_512.txt ../Examples/Stereo-Inertial/TUM_IMU/dataset-room1_512.txt dataset-room1_stereoi
# ../Examples/Monocular/mono_tum_vi ../Vocabulary/ORBvoc.txt ../Examples/Monocular/TUM-VI.yaml "$pathDatasetTUM_VI"/room1/mav0/cam0/data ../Examples/Monocular/TUM_TimeStamps/"dataset-room1_512.txt" orbslam-room1_stereo
echo "------------------------------------"
echo "Evaluation of Room 1 trajectory with Stereo-Inertial sensor"
#python3 ../evaluation/evaluate_ate_scale.py "$pathDatasetTUM_VI"/room1/mav0/mocap0/data.csv f_dataset-room1_stereoi.txt --plot room1_stereoi.pdf

echo "------------------------------------"
echo "------------------------------------"
echo "-------------OUTDOORS---------------"
echo "------------------------------------"
echo "------------------------------------"

echo "Launching Outdoors 4 with Stereo-Inertial sensor"
#../Examples/Stereo-Inertial/stereo_inertial_tum_vi ../Vocabulary/ORBvoc.txt ../Examples/Stereo-Inertial/TUM-VI.yaml "$pathDatasetTUM_VI"/outdoors4/mav0/cam0/data "$pathDatasetTUM_VI"/outdoors4/mav0/cam1/data ../Examples/Stereo-Inertial/TUM_TimeStamps/dataset-outdoors4_512.txt ../Examples/Stereo-Inertial/TUM_IMU/dataset-outdoors4_512.txt orbslam-outdoors4-vio
#../Examples/Monocular/mono_tum_vi ../Vocabulary/ORBvoc.txt ../Examples/Monocular/TUM-VI.yaml "$pathDatasetTUM_VI"/outdoors4/mav0/cam0/data ../Examples/Monocular/TUM_TimeStamps/"dataset-outdoors4_512.txt" orbslam-outdoors4_stereo
echo "------------------------------------"
echo "Evaluation of Outdoors 4 trajectory with Stereo-Inertial sensor"
python3 ../evaluation/evaluate_ate_scale.py "$pathDatasetTUM_VI"/outdoors4/mav0/mocap0/data.csv f_dataset-outdoors4_stereo.txt

echo "------------------------------------"
echo "------------------------------------"
echo "-------------SLIDES-----------------"
echo "------------------------------------"
echo "------------------------------------"

echo "Launching Slides 1 with Stereo-Inertial sensor"
#../Examples/Stereo-Inertial/stereo_inertial_tum_vi ../Vocabulary/ORBvoc.txt ../Examples/Stereo-Inertial/TUM-VI.yaml "$pathDatasetTUM_VI"/slides1/mav0/cam0/data "$pathDatasetTUM_VI"/slides1/mav0/cam1/data ../Examples/Stereo-Inertial/TUM_TimeStamps/dataset-slides1_512.txt ../Examples/Stereo-Inertial/TUM_IMU/dataset-slides1_512.txt dataset-slides1_stereoi
#../Examples/Monocular/mono_tum_vi ../Vocabulary/ORBvoc.txt ../Examples/Monocular/TUM-VI.yaml "$pathDatasetTUM_VI"/slides1/mav0/cam0/data ../Examples/Monocular/TUM_TimeStamps/"dataset-slides1_512.txt" orbslam-slides1_stereo
echo "------------------------------------"
echo "Evaluation of Slides 1 trajectory with Stereo-Inertial sensor"
#python3 ../evaluation/evaluate_ate_scale.py "$pathDatasetTUM_VI"/slides1/mav0/mocap0/data.csv f_dataset-slides1_stereoi.txt --plot slides1_stereoi.pdf

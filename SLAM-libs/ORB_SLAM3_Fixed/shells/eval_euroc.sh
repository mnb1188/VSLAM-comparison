pathDatasetEuroc='../../Datasets/EuRoc'

echo "Launching MH01 with Stereo sensor"
#../Examples/Stereo/stereo_euroc ../Vocabulary/ORBvoc.txt ../Examples/Stereo/EuRoC.yaml "$pathDatasetEuroc"/MH01 ../Examples/Stereo/EuRoC_TimeStamps/MH01.txt dataset-MH01_stereo
#../Examples/Monocular-Inertial/mono_inertial_euroc ../Vocabulary/ORBvoc.txt ../Examples/Monocular-Inertial/EuRoC.yaml "$pathDatasetEuroc"/MH01 ../Examples/Monocular-Inertial/EuRoC_TimeStamps/MH01.txt dataset-MH01_monoi
echo "------------------------------------"
echo "Evaluation of MH01 trajectory with Stereo sensor"
#python3 ../evaluation/evaluate_ate_scale.py ../evaluation/Ground_truth/EuRoC_left_cam/MH01_GT.txt ./f_dataset-MH01_stereo.txt --plot MH01_stereo.pdf

echo "------------------------------------"
echo "------------------------------------"
echo "----------MEDIUM MODE---------------"
echo "------------------------------------"
echo "------------------------------------"

echo "Launching MH03 with Stereo sensor"
#../Examples/Stereo/stereo_euroc ../Vocabulary/ORBvoc.txt ../Examples/Stereo/EuRoC.yaml "$pathDatasetEuroc"/MH_03_medium ../Examples/Stereo/EuRoC_TimeStamps/MH03.txt dataset-MH03_stereo
#../Examples/Monocular-Inertial/mono_inertial_euroc ../Vocabulary/ORBvoc.txt ../Examples/Monocular-Inertial/EuRoC.yaml "$pathDatasetEuroc"/MH_03_medium ../Examples/Monocular-Inertial/EuRoC_TimeStamps/MH03.txt dataset-MH03_monoi
echo "------------------------------------"
echo "Evaluation of MH03 trajectory with Stereo sensor"
#python3 ../evaluation/evaluate_ate_scale.py ../evaluation/Ground_truth/EuRoC_left_cam/MH03_GT.txt ./f_dataset-MH03_stereo.txt --plot MH03_stereo.pdf

echo "------------------------------------"
echo "------------------------------------"
echo "------------HARD MODE---------------"
echo "------------------------------------"
echo "------------------------------------"

echo "Launching MH04 with Stereo sensor"
#../Examples/Stereo/stereo_euroc ../Vocabulary/ORBvoc.txt ../Examples/Stereo/EuRoC.yaml "$pathDatasetEuroc"/MH_04_difficult ../Examples/Stereo/EuRoC_TimeStamps/MH04.txt dataset-MH04_stereo
#../Examples/Monocular-Inertial/mono_inertial_euroc ../Vocabulary/ORBvoc.txt ../Examples/Monocular-Inertial/EuRoC.yaml "$pathDatasetEuroc"/MH_04_difficult ../Examples/Monocular-Inertial/EuRoC_TimeStamps/MH04.txt dataset-MH04_monoi
echo "------------------------------------"
echo "Evaluation of MH04 trajectory with Stereo sensor"
#python3 ../evaluation/evaluate_ate_scale.py ../evaluation/Ground_truth/EuRoC_left_cam/MH04_GT.txt ./f_dataset-MH04_stereo.txt --plot MH04_stereo.pdf



#../Examples/Stereo/stereo_euroc ../Vocabulary/ORBvoc.txt ../Examples/Stereo/s22_camera.yaml ../../seq2/copy-ds ../Examples/Stereo/EuRoC_TimeStamps/output.txt dataset-own
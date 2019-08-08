#!/bin/sh

elements_in_tentacles=10
number_of_tentacles=6

python config_files_yaml_generator.py $elements_in_tentacles $number_of_tentacles
python generate_tentacles_xacros.py $number_of_tentacles
number_of_elements=$(cat numelements_temp.yaml)
echo $number_of_elementscontrollerargs=$(cat controllerargs_temp.yaml)
echo $controllerargs_temproslaunch sentinel_description spawn_andinit_controllers_sentinel.launch number_of_elements:="$number_of_elements" controller_args:="$controllerargs"

#!/bin/bash
# Setting paths for Shape Completion Libraries

export HOMEPATH=$PWD
export PYTHONPATH=$HOMEPATH/train/shape_completion_experiments:$HOMEPATH/utils/binvox-rw-py:$HOMEPATH/utils/keras:$HOMEPATH/utils/PyMCubes:$PYTHONPATH
source /opt/ros/indigo/setup.bash

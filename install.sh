#!/bin/bash
# Installation Script for 3D Shape Completion

cd utils/pycollada
python setup.py build
python setup.py install --user
cd ..
cd PyMCubes
python setup.py build
python setup.py install --user
cd ..
cd ..

source /opt/ros/indigo/setup.bash
cd runtime_ws/src
catkin_init_workspace
cd ..
catkin_make

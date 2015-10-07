#!/bin/bash
# Installation Script for 3D Shape Completion

git clone https://github.com/3DPylearnConv/shape_completion_experiments.git
git clone https://github.com/3DPylearnConv/keras.git
git clone https://github.com/3DPylearnConv/binvox-rw-py.git
git clone https://github.com/pycollada/pycollada.git
cd pycollada
python setup.py build
python setup.py install --user
cd ..
git clone https://github.com/pmneila/PyMCubes.git
cd PyMCubes
python setup.py build
python setup.py install --user
cd ..

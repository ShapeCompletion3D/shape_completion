#!/bin/bash
# Installation Script for 3D Shape Completion

cd utils/pycollada
python setup.py build
python setup.py install --user
cd ..
cd PyMCubes
git checkout working
python setup.py build
python setup.py install --user
cd ..
cd ..

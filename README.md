# Shape Completion
Top level repo for shape complete project.

## Dependencies
- Theano
- H5py
- ROS
- https://github.com/CURG/shape_completion_experiments
- https://github.com/ShapeCompletion3D/PyMCubes
- https://github.com/ShapeCompletion3D/binvox-rw-py
- https://github.com/ShapeCompletion3D/keras
- https://github.com/pycollada/pycollada

## Setup
The following is the procedure to set up the workspace for the Shape Completion project.

1. Clone the ShapeCompletion3D/shape_completion repository into your workspace. The github link to the repository is: https://github.com/ShapeCompletion3D/shape_completion.git

  ```
  git clone https://github.com/ShapeCompletion3D/shape_completion.git
  cd shape_completion/
  ```
2. Run wstool update. This will clone all the other dependent repositories listed in the .rosinstall file into that workspace
  
  ```
  wstool update
  ```
3. Run the installation script ( install.sh ) from the repository. The script will setup all the dependent repositories
  
  ```
  bash install.sh
  ```
4. On your home directory create a ```.theano_rc``` file with the following contents:

  ```
  [global]
  floatX = float32
  device = gpu
  ```
5. All the data we have, including the YCB dataset would be stored in /srv/data/

## Running an experiment
1. Run set_paths.sh to add the necessary directories to your PYTHONPATH (you might want to set up your computer to run this every time a new terminal window opens)
  
  ```
  source set_paths.sh
  ```
2. Go to the experiments folder inside the shape_completion_experiments repository

  ```
  cd train/shape_completion_experiments/experiments/
  ```
3. Run an experiment script. For example, reconstruction_3d_ycb.py, which is the shape completion experiment that uses the YCB dataset with an input and output size of 30x30x30:

  ```
  python reconstruction_3d_ycb.py
  ```

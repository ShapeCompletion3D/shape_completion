# Shape Completion
Top level repo for shape complete project.

Looking for shape_completion_experiments? It's now here: https://github.com/CURG/shape_completion_experiments

## Dependencies
### Should be manually installed before setup:
- Theano
- H5py
- ROS

### Automatically installed by wstool during setup:
- See the ```.rosinstall``` file for a list of these.

## Setup
The following is the procedure to set up the workspace for the Shape Completion project.

1. Install the dependencies mentioned above under the subsection "Should be manually installed before setup."
2. Clone this repository into your workspace.

  ```
  git clone https://github.com/ShapeCompletion3D/shape_completion.git
  cd shape_completion/
  ```
3. Run wstool update. This will clone all the other dependent repositories listed in the .rosinstall file into that workspace
  
  ```
  wstool update
  ```
4. Run the installation script ( install.sh ) from the repository. The script will set up all the dependent repositories
  
  ```
  bash install.sh
  ```
5. On your home directory create a ```.theano_rc``` file with the following contents:

  ```
  [global]
  floatX = float32
  device = gpu
  ```
6. Verify that all the data we have, including the YCB dataset, is stored in /srv/data/

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

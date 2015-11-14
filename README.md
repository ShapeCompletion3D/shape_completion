# Shape Completion
Top level repo for shape complete project

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
4. You will need to run the script called set_paths.sh before you run the code in the shape_completion_experiments repository
  
  ```
  source set_paths.sh
  ```
5. On your home directory create a ```.theano_rc``` file with the following contents:

  ```
  [global]
  floatX = float32
  device = gpu
  ```
6. All the data we have including the YCB dataset would be stored in /srv/data/

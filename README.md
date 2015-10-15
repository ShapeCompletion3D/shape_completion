# shape_completion
top level repo for shape complete project

## Setup
The following is the procedure to set up the workspace for the Shape Completion project.

1. Clone the 3DPylearnConv/shape_completion repository into your workspace. The github link to the repository is: https://github.com/3DPylearnConv/shape_completion.git
  
  ```
  git clone https://github.com/3DPylearnConv/shape_completion.git
  cd shape_completion/
  ```
2. Run the installation script ( install.sh ) from the repository. The script will clone all the other dependent repositories into that workspace
  
  ```
  bash install.sh
  ```
3. You will need to run the script called set_paths.sh before you run the code in the shape_completion_experiments repository
  
  ```
  bash set_paths.sh
  ```
4. All the data we have including the YCB dataset would be stored in /srv/data/

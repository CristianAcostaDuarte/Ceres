#!/bin/bash

# Creating the folder for the project
# Set the name of the folder to be created
folder_name="ceres"

# Check if the folder exists
if [ -d "$folder_name" ]; then
  echo "The folder already exists."
else
  # Create the folder if it does not exist
  mkdir "$folder_name"
  echo "The folder has been created."
fi

# Copy the data form the repository to the project folder

repo_url="https://github.com/dgadiraju/data.git"
cwd=$(pwd) #Current directory
clone_path="$cwd/$folder_name"
git clone "$repo_url" "$clone_path"
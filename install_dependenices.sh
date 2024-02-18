#!/bin/bash

# compile bag of words
# cd pop_planar_slam/Thirdparty/DBoW2
# replace with pushd and popd
pushd pop_planar_slam/Thirdparty/DBoW2
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j2

# install isam dependency
sudo apt-get install cmake libsuitesparse-dev libeigen3-dev libsdl1.2-dev doxygen graphviz -y
popd
# sudo pip install -r py_requirements.txt
python -m venv venv
source venv/bin/activate
pip install -r py_requirements.txt

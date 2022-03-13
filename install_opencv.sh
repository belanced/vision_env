#!/bin/bash

DEFAULT_CV_VERSION=4.5.2
CURRENTFOLDER=$(pwd)
read -p "OpenCV version(default ${DEFAULT_CV_VERSION}): " VERSION_INPUT

if [ -z "$VERSION_INPUT" ]
then  # default version
    VERSION=${DEFAULT_CV_VERSION}
else
	VERSION=${VERSION_INPUT}
fi

echo "* Install OpenCV version: ${VERSION}"

BASEFOLDER=subfolder

WS_DIR=${CURRENTFOLDER}/${BASEFOLDER}/OpenCV

# prepare system environment
ARCH=$(uname -i) && echo "* Detected architecture: ${ARCH}"
CUDA_PATH=/usr/local/cuda
CUDA_ARCH_PATH=$CUDA_PATH/targets/${ARCH}-linux
CUDA_BIN_PATH=$CUDA_PATH/bin
CUDA_LIB_PATH=$CUDA_ARCH_PATH/lib
CUDA_INC_PATH=$CUDA_ARCH_PATH/include
PATH=$CUDA_BIN_PATH:$PATH

export CUDA_PATH CUDA_BIN_PATH CUDA_ARCH_PATH CUDA_LIB_PATH
export CUDA_INC_PATH PATH

# make directories and clone the sources
rm -rf ${WS_DIR}
mkdir -p ${WS_DIR}
cd ${WS_DIR}

git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git
cd ${WS_DIR}/opencv && git checkout ${VERSION}
cd ${WS_DIR}/opencv_contrib && git checkout ${VERSION}

# clear aptitude opencv installation
sudo apt purge libopencv*
sudo rm -rf /usr/local/opencv4/

# install dependencies
sudo apt update && sudo apt upgrade -y
sudo apt install -y ubuntu-restricted-extras build-essential cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt install -y libjpeg-dev libpng-dev libtiff-dev
sudo apt install -y libavcodec-dev libavformat-dev libswscale-dev libavresample-dev
sudo apt install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
sudo apt install -y libxvidcore-dev x264 libx264-dev libfaac-dev libmp3lame-dev libtheora-dev 
sudo apt install -y libfaac-dev libmp3lame-dev libvorbis-dev
sudo apt-get install -y python3-dev python3-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev gstreamer1.0

sudo apt-get install -y libdc1394-22 libdc1394-22-dev libxine2-dev libv4l-dev v4l-utils
cd /usr/include/linux
sudo ln -s -f ../libv4l1-videodev.h videodev.h

sudo apt-get install -y python3-dev python3-pip
sudo -H pip3 install numpy

sudo apt-get install -y libtbb-dev
sudo apt-get install -y libatlas-base-dev gfortran

mkdir -p ${WS_DIR}/opencv/build
cd ${WS_DIR}/opencv/build

cmake 	-D CMAKE_BUILD_TYPE=Release \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D BUILD_WITH_DEBUG_INFO=OFF \
	-D BUILD_EXAMPLES=OFF \
	-D BUILD_opencv_python2=OFF \
	-D BUILD_opencv_python3=ON \
	-D INSTALL_PYTHON_EXAMPLES=ON \
	-D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
	-D WITH_CUDA=ON \
	-D WITH_NVCUVID=OFF \
	-D ENABLE_FAST_MATH=ON \
	-D CUDA_FAST_MATH=ON \
	-D WITH_GSTREAMER=ON \
	-D WITH_CUBLAS=ON \
	-D WITH_TBB=ON \
	-D WITH_V4L=ON \..

make -j$(nproc)
#sudo make install

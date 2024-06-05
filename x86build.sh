rm -rf build
mkdir build
cd build
opencv_cmake_file_dir=/home/chenhaiwei/code/engine-efficient-deploy/thirdParty/opencv/ubuntu1804/lib/cmake/opencv4/
onnxruntime_dir=/home/chenhaiwei/code/third_party/onnxruntime_unbuntu
cmake -DONNXRUNTIME_DIR=${onnxruntime_dir} -DOpenCV_DIR=${opencv_cmake_file_dir} ..
make -j4
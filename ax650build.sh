rm -rf build
mkdir build
cd build
msp_out_dir=/home/chenhaiwei/code/ax650n_bsp_sdk/msp/out
echo "bsp dir: ${BSP_MSP_DIR}"
export PATH=$PATH:/home/chenhaiwei/resource/toolchain/gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu/bin/
onnxruntime_dir=/home/chenhaiwei/code/third_party/onnxruntime_arm
cmake -DONNXRUNTIME_DIR=${onnxruntime_dir} -DOpenCV_DIR=${opencv_cmake_file_dir} -DBSP_MSP_DIR=${msp_out_dir} -DBUILD_WITH_AX650=ON -DCMAKE_TOOLCHAIN_FILE=../toolchains/aarch64-none-linux-gnu.toolchain.cmake ..
make -j4
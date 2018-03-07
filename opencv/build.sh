TERMUX_PKG_VERSION=3.4.0
TERMUX_PKG_REVISION=0
TERMUX_PKG_SRCURL=file:///home/builder/termux-packages/opencv-3.4.0.tar.gz

termux_step_pre_configure() {
	TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DCMAKE_BUILD_TYPE=RELEASE \
					 -DCMAKE_C_EXAMPLES=ON \
					 -DCMAKE_PYTHON_EXAMPLES=ON \
					 -DBUILD_SHARED_LIBS=ON \
					 -DBUILD_EXAMPLES=ON \
					 -DBUILD_opencv_python3=ON \
					 -DPYTHON3_INCLUDE_PATH=/data/data/com.termux/files/usr/include/python3.6m \
					 -DPYTHON3_LIBRARIES=/data/data/com.termux/files/usr/lib/libpython3.6m.so \
					 -DPYTHON3_NUMPY_INCLUDE_DIRS=/data/data/com.termux/files/usr/lib/python3.6/site-packages/numpy-1.13.3-py3.6-linux-aarch64.egg/numpy/core/include  \
					 -DPYTHON3_PACKAGES_PATH=/data/data/com.termux/files/usr/lib/python3.6/site-packages/"
}


termux_step_post_configure() {
	TERMUX_PKG_EXTRA_CONFIGURE_ARGS=""
}

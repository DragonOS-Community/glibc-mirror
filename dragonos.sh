bash install_deps.sh
# bash default_configure.sh
cd build
make -j $(nproc)
DESTDIR=$DADK_CURRENT_BUILD_DIR make install -j $(nproc)

mkdir -p $DADK_CURRENT_BUILD_DIR/lib64
cp $DADK_CURRENT_BUILD_DIR/lib/* $DADK_CURRENT_BUILD_DIR/lib64
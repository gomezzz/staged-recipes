#!/bin/bash


mkdir -p build-dir
cd build-dir


cmake -LAH \
    -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
    -DCMAKE_INSTALL_NAME_DIR="${PREFIX}/lib"\
    ../ostap

make -j${CPU_COUNT}
make install





ln -s "${PREFIX}/ostap" "${SP_DIR}/"

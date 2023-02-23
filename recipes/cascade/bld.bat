mkdir build
cd build

cmake ^
    -G "Visual Studio 16 2019" -A x64 ^
    -DPython3_EXECUTABLE=%PREFIX%\python.exe ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
    -DCASCADE_BUILD_TESTS=no ^
    -DBoost_NO_BOOST_CMAKE=ON ^
    -DCASCADE_BUILD_PYTHON_BINDINGS=yes ^
    ..

cmake --build . --config Release --target install

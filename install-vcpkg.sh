git clone https://github.com/Microsoft/vcpkg.git
./vcpkg/bootstrap-vcpkg.sh
export VCPKG_FORCE_SYSTEM_BINARIES=arm
./vcpkg install boost

# cmake .. -GNinja -DCMAKE_TOOLCHAIN_FILE=/home/ec2-user/seastar/vcpkg/scripts/buildsystems/vcpkg.cmake
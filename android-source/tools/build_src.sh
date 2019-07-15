
source build/envsetup.sh
export USER=$(whoami)
lunch aosp_hammerhead-eng
make -j16
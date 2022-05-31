EDK2 for Qualcomm Snapdragon 690.

Based on zhuowei's commits for Pixel3XL - https://github.com/Pixel3Dev/edk2-pixel3 and on Galaxy A72 UEFI.

## Status
Literally nothing has been tested!

## WARNING

**DO NOT EVER TRY TO PORT IT TO *SONY* and *GOOGLE* DEVICES**

**YOUR UFS WILL BE WIPED CLEAN!!!**

## Building
Tested on:

Ubuntu 20.04 (WSL2)

Debian on WSL2

Setup
```
git clone https://github.com/UsedNametag/edk2-sm6350
git clone https://github.com/tianocore/edk2.git --recursive --depth 1
sudo apt install build-essential uuid-dev iasl git nasm python3-distutils gcc-aarch64-linux-gnu abootimg
cd edk2-sm6350
./firstrun.sh
```
Build
```
./build.sh
```
Or this for 8Gb RAM phones
```
./build_8G.sh
```
Boot
```
fastboot boot SM6350.img
```

# Credits

SimpleFbDxe screen driver is from imbushuo's [Lumia950XLPkg](https://github.com/WOA-Project/Lumia950XLPkg).

`fxsheep` for his original `edk2-sagit`

`strongtz` for maintaining Renegade Project

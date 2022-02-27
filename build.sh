#!/usr/bin/env bash

git config --global user.email "najmulhasan3609@gmail.com"
git config --global user.name "nhAsif"
sudo apt-get -y update
git clone https://github.com/CyberJalagam/android_rom_building_scripts scripts && cd scripts && chmod +x build.sh && echo "1 13" | bash build.sh
cd
git clone https://gitlab.com/OrangeFox/sync.git
cd sync 
./orangefox_sync.sh --branch 11.0 --path ~/fox_11.0
cd
cd fox_11.0
git clone --depth=1 https://github.com/baunilla/recovery_device_xiaomi_rosy.git -b android-11 device/xiaomi/rosy
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export LC_ALL="C
lunch twrp_rosy-eng
mka recoveryimage | tee logs.txt
curl --upload-file ./out/target/product/rosy/OrangeFox-*.zip https://transfer.sh/nhalos.zip






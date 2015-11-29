#/bin/bash

TARGET_DIR=out/merged_target_files

cp -f other/UPDATE-SuperSU.zip $TARGET_DIR/META/
cp -f other/file_contexts $TARGET_DIR/META/
cp -r other/emmc_appsboot.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -r other/logo.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -r other/NON-HLOS.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -r other/rpm.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -r other/sbl1.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -r other/sdi.mbn $TARGET_DIR/BOOTABLE_IMAGES/
cp -r other/static_nvbk.bin $TARGET_DIR/BOOTABLE_IMAGES/
cp -r other/tz.mbn $TARGET_DIR/BOOTABLE_IMAGES/

Device configuration for Sharp SG503SH (PA31)
========================================================

Description
-----------

This repository is for twrp-11 on Sharp SG503SH (PA31).

How to build twrp-11
----------------------

## Compile

First checkout minimal twrp with aosp tree:

```
mkdir -p ~/android/twrp-11
cd ~/android/twrp-11
repo init --depth=1 -u git@github.com:minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-11
repo sync
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/sharp/pa31" name="JerryCheng1/twrp_device_sharp_pa31" remote="github" revision="android-11" />
<project path="kernel/sharp/msm8994" name="JerryCheng1/android_kernel_sharp_msm8994" remote="github" revision="lineage-18.1" />
<project path="device/qcom/common" name="TeamWin/android_device_qcom_common" remote="github" revision="android-11" />
```

Finally execute these:

```
. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
lunch twrp_pa31-eng
make recoveryimage
```

To test it:

```
fastboot boot out/target/product/pa31/recovery.img
```

## Thanks

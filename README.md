Device configuration for Sharp SG503SH (PA31)
========================================================

Description
-----------

This repository is for twrp-9.0 on Sharp SG503SH (PA31).

How to build twrp-9.0
----------------------

## Compile

First checkout minimal twrp with omnirom tree:

```
mkdir -p ~/android/twrp-9
cd ~/android/twrp-9
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0
repo sync
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/sharp/pa31" name="JerryCheng1/twrp_device_sharp_pa31" remote="github" revision="android-9.0" />
<project path="kernel/sharp/msm8994" name="JerryCheng1/android_kernel_sharp_msm8994" remote="github" revision="lineage-16.0" />
<project path="device/qcom/common" name="TeamWin/android_device_qcom_common" remote="github" revision="android-9.0" />
```

Finally execute these:

```
. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
lunch omni_pa31-eng
make recoveryimage
```

To test it:

```
fastboot boot out/target/product/pa31/recovery.img
```

## Thanks

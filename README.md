## TWRP device tree for LG G5 (International H850)

Add to `.repo/local_manifests/h850.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/lge/h850" name="android_device_lge_h850" remote="TeamWin" revision="android-8.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_h850-eng
mka recoveryimage
```

Kernel sources are available at: https://github.com/LineageOS/android_kernel_lge_msm8996


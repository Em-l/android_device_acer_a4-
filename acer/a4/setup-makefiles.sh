#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE=a4

mkdir -p ../../../vendor/acer/$DEVICE

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/acer/$DEVICE/$DEVICE-vendor.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/acer/__DEVICE__/setup-makefiles.sh

# Live wallpaper packages
PRODUCT_PACKAGES := \\
    LiveWallpapers \\
    LiveWallpapersPicker \\
    MagicSmokeWallpapers \\
    VisualizationWallpapers \\
    librs_jni

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES := \\
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Pick up overlay for features that depend on non-open-source files
DEVICE_PACKAGE_OVERLAYS := vendor/acer/__DEVICE__/overlay

\$(call inherit-product, vendor/acer/__DEVICE__/__DEVICE__-vendor-blobs.mk)
EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/acer/$DEVICE/BoardConfigVendor.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/acer/__DEVICE__/setup-makefiles.sh

USE_CAMERA_STUB := false

EOF

mkdir -p ../../../vendor/acer/$DEVICE/overlay/packages/apps/Trebuchet/res/values
(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/acer/$DEVICE/overlay/packages/apps/Trebuchet/res/values/config.xml
<!-- this enable hwacceleration in Trebuchet Launcher -->





<resources>
    <bool name="config_cyanogenmod">true</bool>
    <bool name="config_hardwareAccelerated">true</bool>
</resources>
EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/acer/$DEVICE/BoardConfigVendor.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/acer/__DEVICE__/setup-makefiles.sh

USE_CAMERA_STUB := false

EOF

mkdir -p ../../../vendor/acer/$DEVICE/overlay/packages/apps/Torch/res/values
(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/acer/$DEVICE/overlay/packages/apps/Torch/res/values/config.xml
<?xml version="1.0" encoding="utf-8"?>
<!--
/*
** Copyright 2011, The CyanogenMod Project
**
** Licensed under the Apache License, Version 2.0 (the "License"); 
** you may not use this file except in compliance with the License. 
** You may obtain a copy of the License at 
**
**     http://www.apache.org/licenses/LICENSE-2.0 
**
** Unless required by applicable law or agreed to in writing, software 
** distributed under the License is distributed on an "AS IS" BASIS, 
** WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
** See the License for the specific language governing permissions and 
** limitations under the License.
*/
-->

<!-- These resources are around just to allow their values to be customized
     for different hardware and product builds. -->
<resources>
    <!-- If there is no sysfs-based control mechanism, enable this -->
    <bool name="useCameraInterface">true</bool>
</resources>
EOF


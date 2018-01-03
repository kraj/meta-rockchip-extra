# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
# Released under the MIT license (see COPYING.MIT for the terms)

DESCRIPTION = "Rockchip Retroarch base Image."
SUMMARY = "A very basic X11 image with a retroarch build"

#IMAGE_FEATURES += "splash package-management x11-base"
#IMAGE_FEATURES += "x11-base"

LICENSE = "MIT"

inherit core-image distro_features_check

REQUIRED_DISTRO_FEATURES = "x11"

X11-BASE_INSTALL = " \
    packagegroup-core-x11-xserver \
    packagegroup-core-x11-utils \
    dbus \
"

RETROARCH_INSTALL = " \
    libsdl2 \
    rockchip-mali \
    alsa-lib-dev \
    libxcb \
    libxkbcommon \
    libxv \
"

CORE_IMAGE_EXTRA_INSTALL += " \
    ${RETROARCH_INSTALL} \
    ${X11-BASE_INSTALL} \
"

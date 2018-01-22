# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
# Released under the MIT license (see COPYING.MIT for the terms)

SRC_URI += " \
	file://0001-kmssink-correct-position-for-UI-upscaling.patch \
"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
FILESPATH_prepend := "${THISDIR}/${PN}:"

# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
# Released under the MIT license (see COPYING.MIT for the terms)

SRC_URI += " \
	file://0001-eglfs_kms-allow-framebuffer-upscale.patch \
	file://0002-qt5base-eglfs_kms-set-framebuffer-support-transparen.patch \
"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
FILESPATH_prepend := "${THISDIR}/${PN}:"

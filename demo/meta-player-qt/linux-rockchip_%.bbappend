# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
# Released under the MIT license (see COPYING.MIT for the terms)

SRC_URI += " \
	file://0001-drm-rockchip-make-video-overlay-bottom-layer.patch \
	file://0002-rk3036-drm-rockchip-make-video-overlay-bottom-layer.patch \
	file://0003-drm-allow-framebuffer-and-videomodes-not-to-have-sam.patch \
"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
FILESPATH_prepend := "${THISDIR}/${PN}:"

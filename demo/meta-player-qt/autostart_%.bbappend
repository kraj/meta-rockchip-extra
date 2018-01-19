# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
# Released under the MIT license (see COPYING.MIT for the terms)

SRC_URI += " \
	file://autostart-rk3036.sh \
"
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
FILESPATH_prepend := "${THISDIR}/${PN}:"

do_install_append_rk3036() {
	rm ${D}/${sysconfdir}/init.d/autostart.sh
	install -m 0755 ${S}/autostart-rk3036.sh ${D}/${sysconfdir}/init.d/autostart.sh
}

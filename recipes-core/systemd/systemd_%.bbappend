# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
# Released under the MIT license (see COPYING.MIT for the terms)

do_install_append () {
	install -d ${D}/${base_sbindir}
	ln -s ${D}${exec_prefix}/lib/systemd ${D}${base_sbindir}/init
}

FILES_${PN} += " ${base_sbindir}/init"

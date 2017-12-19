require conf/distro/poky.conf
require conf/distro/include/rk-tune.inc

DISTRO = "rk-base"
DISTRO_NAME = "Rockchip Distro Base"
SDK_VENDOR = "-rksdk"

MAINTAINER = "Jacob Chen <jacob2.chen@rock-chips.com>"

TARGET_VENDOR = "-rk"

DISTROOVERRIDES = "rockchip"

# Rockchip BSP default settings

VIRTUAL-RUNTIME_init_manager = "systemd"

PREFERRED_VERSION_libdrm = "rk"
PREFERRED_VERSION_xserver-xorg = "rk"
PREFERRED_VERSION_xserver-nodm-init = "2.0"
XSERVER ?= "xserver-xorg \
		   xf86-input-libinput \
		   xf86-video-modesetting"

XSERVER_mali-utgard = "xserver-xorg \
		   xf86-input-libinput \
		   xf86-video-armsoc-rockchip"

PREFERRED_PROVIDER_virtual/egl = "rockchip-mali"
PREFERRED_PROVIDER_virtual/libgles1 = "rockchip-mali"
PREFERRED_PROVIDER_virtual/libgles2 = "rockchip-mali"
PREFERRED_PROVIDER_virtual/libopencl = "rockchip-mali"

LICENSE_FLAGS_WHITELIST="commercial"

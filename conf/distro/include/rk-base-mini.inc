require conf/distro/poky.conf
require conf/distro/include/rk-tune.inc

DISTRO = "rk-base"
DISTRO_NAME = "Rockchip Distro Base"
SDK_VENDOR = "-rksdk"

MAINTAINER = "Jacob Chen <jacob2.chen@rock-chips.com>"

TARGET_VENDOR = "-rk"

DISTROOVERRIDES = "rockchip"

# Rockchip BSP default settings

PREFERRED_VERSION_libdrm = "rk"

XSERVER_mali-utgard = "xserver-xorg \
		   xf86-input-libinput \
		   xf86-video-armsoc-rockchip"

PREFERRED_PROVIDER_virtual/egl = "rockchip-mali"
PREFERRED_PROVIDER_virtual/libgles1 = "rockchip-mali"
PREFERRED_PROVIDER_virtual/libgles2 = "rockchip-mali"
PREFERRED_PROVIDER_virtual/libopencl = "rockchip-mali"

PREFERRED_VERSION_gstreamer1.0 = "1.12.0"
PREFERRED_VERSION_gstreamer1.0-plugins-base = "1.12.0"
PREFERRED_VERSION_gstreamer1.0-plugins-good = "1.12.0"
PREFERRED_VERSION_gstreamer1.0-plugins-bad= "1.12.0"
PREFERRED_VERSION_gstreamer1.0-plugins-ugly = "1.12.0"
PREFERRED_VERSION_gstreamer1.0-rtsp-server = "1.12.0"
PREFERRED_VERSION_gstreamer1.0-libav = "1.12.0"

LICENSE_FLAGS_WHITELIST="commercial"

#!/bin/sh
### BEGIN INIT INFO
# Provides:          autostart
# Required-Start:    $remote_fs $all
# Required-Stop:     $remote_fs $all
# Default-Start:     5
# Default-Stop:
# Short-Description: Start application at boot time
# Description:       This script will run the application as the
#					 last tep in the boot process.
### END INIT INFO

export QT_EGLFSPLATFORM_USE_GST_VIDEOSINK=1
export QT_GSTREAMER_WINDOW_VIDEOSINK=kmssink
export QT_QPA_PLATFORM=eglfs
export QT_QPA_EGLFS_KMS_CONFIG=/tmp/qt.json

# limit resolution to 720p since rk3036 win1 only support 720p input, 
# you can change qt patch if you want to do it automaticly
# Related patch: 0001-eglfs_kms-allow-framebuffer-upscale.patch
export QT_QPA_EGLFS_WIDTH=1280
export QT_QPA_EGLFS_HEIGHT=720

# UI performance is not that good, i suspect that is driver issues
echo performance > /sys/class/devfreq/10091000.gpu/governor

case $1 in
start)
	# disable hw cursor
	cat >/tmp/qt.json <<EOF
{
  "device": "/dev/dri/card0",
  "hwcursor": false,
  "pbuffers": false
}
EOF

	cd /usr/share/qt5/examples/multimedia/Carmachine
	nohup ./Carmachine &
	;;
stop)
	killall Carmachine
	;;
esac

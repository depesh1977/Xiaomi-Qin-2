#!/sbin/sh

# Team Hovatek Touch Fix
load_panel()
{
	insmod /sbin/sprd_vibrator.ko
}


load_panel
wait 1
setprop modules.loaded 1
exit 0

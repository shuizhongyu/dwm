# input method
# export LANG="eo.UTF-8"
export LC_CTYPE="zh_CN.UTF-8"
export XMODIFIERS="@im=fcitx"
export XIM=fcitx
export XIM_PROGRAM=fcitx
killall fcitx
fcitx &


# auto start
#killall stardict
#startdict&
#killall wicd-client
#wicd-client &
#killall tp-button


# X defaults
#xrdb ~/.Xdefaults
xrdb ~/.Xdefaults
#xrdb ~/.Xnetwork
#

# touch pad
## Acer
#synclient TapButton1=1
#synclient TapButton2=2
#synclient TapButton3=3
#synclient VertEdgeScroll=1

## Thinkpad E440
# 1 finger = left click, 2 finger = right click, 3 finger = middle click
synclient TapButton1=0
synclient TapButton2=0
synclient TapButton3=0
synclient ClickFinger1=1
synclient ClickFinger2=3
synclient ClickFinger3=2
# enable horizontal two-finger scrolling (vertical is enabled by default)
synclient HorizTwoFingerScroll=1
# disable the top edge of the touchpad to prevent jittering when using the trackpoint
synclient AreaTopEdge=2500
# configure trackpoint buttons
synclient RightButtonAreaLeft=3700
synclient RightButtonAreaRight=4790
synclient RightButtonAreaTop=1550
synclient RightButtonAreaBottom=2000
synclient MiddleButtonAreaLeft=2900
synclient MiddleButtonAreaRight=3500
synclient MiddleButtonAreaTop=1550
synclient MiddleButtonAreaBottom=2000


# screen output
xrandr --output VGA-0 --auto
#xrandr --output DFP5 --right-of DFP1 --auto
#xrandr --output VGA-0 --right-of HDMI-0 --auto
xrandr --output HDMI-0 --left-of VGA-0 --auto

xgamma -rgamma 1.0 -ggamma 1.0 -bgamma 1.0

# status bar
while true; do
	line="`cat /sys/class/power_supply/BAT0/status`"
	#line="$line `cat /sys/class/power_supply/BAT0/capacity`%"
	line="$line `cat /sys/class/power_supply/BAT0/capacity`"
	line="$line `date '+%a %m-%d %H:%M:%S %Z'`"
	xsetroot -name "$line"
	sleep 1
done &

# wallpaper
#feh --bg-fill /usr/share/backgrounds/Dans_ma_bulle_by_Christophe_Weibel.jpg
feh --bg-fill /home/ljx/Pictures/wallpaper/6.jpeg

#auto start
killall keynav
keynav &

killall parcellite
parcellite &

#killall shutter
#shutter&

killall stardict
stardict -h&


# start dwm
dwm > /tmp/dwm.log 2>&1
#/home/xyd/btw/dwm/dwm

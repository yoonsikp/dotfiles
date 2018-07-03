xrandr --newmode "1024x600_59.94"  48.84  1024 1064 1168 1312  600 601 604 621  -HSync +Vsync
xrandr --addmode LVDS1 "1024x600_59.94"
xrandr --output LVDS1 --mode "1024x600_59.94"
xrandr --dpi 96
xrdb -merge ~/.Xresources
xcalib -co 93 -a
exec i3



#!/bin/sh 

# Find the line in "xrandr -q --verbose" output that contains current screen orientation and "strip" out current orientation. 

rotation="$(xrandr -q --verbose | grep 'connected' | egrep -o  '\) (normal|left|inverted|right) \(' | egrep -o '(normal|left|inverted|right)')" 

# Using current screen orientation proceed to rotate screen and input tools. 

case "$rotation" in 
    normal) 
#    -rotate to the left
    xrandr -o left 
	xinput --map-to-output $(xinput list --id-only "Goodix Capacitive TouchScreen") DSI1
	;;
    left) 
#    -rotate to normal 
    xrandr -o normal 
	xinput --map-to-output $(xinput list --id-only "Goodix Capacitive TouchScreen") DSI1
	;; 
esac

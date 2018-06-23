A collection of scripts for manual screen rotation of tablet displays in linux.

- these scripts are for use with xorg not wayland

An explanation of what these do:

-	screen-rotate-right.sh, and screen-rotate-left.sh both work as follows:
	1. check if screen is in normal or right/left position
	2. if normal, rotate to right/left else rotate to normal

-	screen-rotate-clockwise.sh, and screen-rotate-counter-clockwise.sh will keep cycling 
	90 degrees in either clockwise or counter-clockwise direction.

-	touchscreen-align.sh aligns your touchscreen to your display orientation. 
	This is useful if your desktop environment is set up to rotate your display at startup,
	but your touchscreen alignment does not rotate with display orientation.

* Before using these scripts make sure your graphics card driver is set up, 
otherwise you may need to repeat step 2.

How to use rotation scripts:

Step 1. Find the ID of your touchscreen using xinput.
		in term: xinput list
		
		My touchscreen was called "Goodix Capacitive TouchScreen".
		Replace "Goodix Capacitive TouchScreen" with whatever your ID is in scripts.
		
Step 2.	Find display ID using xrandr. 
		in term: xrandr
		
		My display ID is DSI1. Replace DSI1 with yours in scripts.
		
Step 3. Make sure scripts are executable, if not:
		in term: chmod +x /path/to/scripts/script-to-change-permissions-for.sh
		
Step 4. Finally, configure your panel/dock/bar/launcher area to use the scripts.
		You can use the .desktop files if necessary, just be sure to edit them and 
		replace my username with your own.
		


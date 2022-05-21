sudo docker run -id --name ros_noetic --network host \
	--privileged -v /dev:/dev -e DISPLAY=$DISPLAY -e QT_X11_NO_MITSHM=1 \
	-v /sys/class/pwm:/sys/class/pwm \
	-v /sys/bus/i2c/devices/3-0050/eeprom:/sys/bus/i2c/devices/3-0050/eeprom \
	0nhc/mnpp:test
sudo xhost +

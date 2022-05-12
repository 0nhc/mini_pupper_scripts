sudo docker run -id --name ros_noetic --network host \
	--privileged -v /dev:/dev -e DISPLAY=$DISPLAY -e QT_X11_NO_MITSHM=1 \
	-v /sys/class/pwm:/sys/class/pwm \
	-v /sys/class/gpio:/sys/class/gpio \
	0nhc/mnpp:test
sudo xhost +

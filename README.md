# Mini Pupper Scripts

* This repository will guide you how to install docker and our modified docker image on Mini Pupper
* It also works on Ubuntu 22.04, but our hardware drivers for Ubuntu 22.04 is not finished yet, so temporarily we will use it on Ubuntu 20.04

The easiest way to launch dancing demo is to use the SD card image I provided. However if you want to go through the configuration steps, you can also follow the instruction below.

# 1. Use the SD card image

```sh
cd ~/mini_pupper_scripts
sudo ./exec.sh
# now you are supposed to enter a docker container
roslaunch servo_interface calibrate.launch
```
Through this script, you can calibrate the angle of every servo in one turn. Just input the angles.</br>
The hip and shank should be horizontal, and the ham should be vertical.</br>
![1](imgs/calibration.jpg)
After calibration, you can make Mini Pupper dancing.
```sh
# still in docker container
roslaunch mini_pupper_dance dance.launch
```

# 2. Configure the SD card by yourself

## 2.1 Install Docker for Raspberry Pi 4B

```sh
sudo apt-get update
sudo apt-get install curl
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

## 2.2 Pull our Docker Image for Mini Pupper

```sh
sudo docker pull 0nhc/mnpp:test
```

## 2.3 Create Docker Container from this Image

```sh
cd ~
git clone https://github.com/0nhc/mini_pupper_scripts.git
cd mini_pupper_scripts
sudo ./create_container.sh
```

Then you can enter this docker container and test all the servos

```sh
sudo ./exec.sh
# now your terminal is supposed to be in the Docker container
roslaunch servo_interface calibrate.launch
```
Through this script, you can calibrate the angle of every servo in one turn. Just input the angles.</br>
The hip and shank should be horizontal, and the ham should be vertical.</br>
![1](imgs/calibration.jpg)
## 2.4 Change/Install BSP Package

I have modified this package to display IP address on the screen

```sh
cd ~
sudo rm -rf minipupper_ros_bsp
git clone https://github.com/0nhc/minipupper_ros_bsp.git
cd minipupper_ros_bsp/mangdang
sudo sh install.sh
sudo reboot
```

If you want to update the displayed IP address immediately after changing network, just

```sh
python3 ~/minipupper_ros_bsp/mangdang/LCD/demo.py
```
or you can reboot Mini Pupper so that the IP address displayed on the screen will be automatically updated

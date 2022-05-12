# Mini Pupper Scripts

* This repository will guide you how to install docker and our modified docker image on Mini Pupper

* It also works on Ubuntu 22.04, but our hardware drivers for Ubuntu 22.04 is not finished yet, so temporarily we will use it on Ubuntu 20.04

# 1. Install Docker for Raspberry Pi 4B

```sh
sudo apt-get update
sudo apt-get install curl
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

# 2. Pull our Docker Image for Mini Pupper

```sh
sudo docker pull 0nhc/mnpp:test
```

# 3. Create Docker Container from this Image

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


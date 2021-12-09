# Linux Device Driver for DHT11 Sensor

## Description
In this project, we are providing Device Driver for DHT11 sensor which will read temperature and humidity data.

## Steps for Compilation
1. First we need to set up the Kernel source for which following commands are used in RPI Desktop terminal:
> #The usual update routine
> apt-get update -y
> apt-get update -y
> #Update kernel and dependencies
> rpi-update
> sudo apt install git bc bison flex libssl-dev make
> #Add/Remove any needed packages
> sudo apt-get dist-upgrade
> sudo apt-get install linux-headers-$(uname -r)
2. Navigate to directory with project files.
3. Obtain kernel object file using command
> make all
4. Then insert kernel module with command
> sudo insmod example01-dht11.ko
5. To check output message produced by driver use command
> dmesg

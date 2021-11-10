# G547

## Block Device driver (Disk on file)

1 Download the main.c and Makefile

2 Go to the directory in which code is downloaded and give the command $ make all

3 Insert the module using sudo insmod main.ko

4 Check if module is loaded using lsmod command

5 Check the partition info using cat /proc/partitions also check using ls -l /dev/dof* or sudo fdisk -l

6 We have created 2 logical Parititions of the Device(/dev/dof1 & /dev/dof2)

7 Take root access using sudo -s command

8 Write into disk use cat > /dev/dof ,type something & press enter to read back from the disk on command line use command xxd /dev/dof | less

9 Remove the module using sudo rmmod main.ko

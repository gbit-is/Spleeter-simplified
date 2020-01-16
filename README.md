# Spleeter-simplified
Spleeter is a cool audio tool but requires some tech skills to use my friend doesn't have so, I pretty much just made this for him
so he could use spleeter on his computer without much hazzle

This is not some finished project, I just needed to give a bit of code and some instructions to a friend, git seemed like a logical choice for that


# How it works
This just used the linux subsystem for windows 10 to run ubuntu, setup python and pip, get the prereqs for spleeter
and wrap it up in such a manner that there is simply an input folder and an output folder.

- 1: Put mp3 file/s in C:\splee\in\
- 2: run spleet
- 3: get the output from C:\splee\out\

Don't use filenames with spaces or special characters, just rename your files to something basic like "nameOfBandNameOfSong.mp3"



# Prep your windows machine (has to be windows 10)

### Get the Linux Subsystem
Just follow this guide here, your computer will need to restart and then choose "Ubuntu 18.04 LTS"

https://docs.microsoft.com/en-us/windows/wsl/install-win10

You will need to set a user and pass and log in

### Install  the thing
Inside the Linux subsystem, run the following commands, some of these will take some time.
```bash
apt-get update
apt-get install wget unzip -y 
cd /tmp
wget https://github.com/gbit-is/Spleeter-simplified/archive/master.zip
unzip master.zip
mv Spleeter-simplified-master /mnt/c/splee
cd /mnt/c/splee
bash install.sh
```

### First run
First run takes more time then the others, since it has to download some stuff
inside the linux subsystem just type "spleet" and hit enter
it should download the neccesery files it needs to run spleeter now, then try to split the "audio_example.mp3" file provided in C:\splee\in\ and spit it out 2 files in to c:\splee\out\audio_example\

### Future runs 
you can now just use powershell and type in there "wsl spleet" and hit enter









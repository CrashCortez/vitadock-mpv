#MPV Rpi4 OpenGL 

HW accelerated build.

OpenGL Mesa drivers need to be enabled in raspi-config 

```
sudo raspi-config
```

Dependancies needed
_____
 
```
sudo apt-get install -y checkinstall devscripts libavcodec-dev libavdevice-dev libavfilter-dev libavformat-dev libavutil-dev libpostproc-dev libswscale-dev libluajit-5.1-dev libasound2-dev libass-dev libbluray-dev libcdio-cdda-dev libcdio-dev libcdio-paranoia-dev libdvdnav-dev libdvdread-dev libjpeg-dev libjpeg62-turbo-dev  libv4l-dev libsdl2-dev
```
Download Deb
______

```
wget https://github.com/CrashCortez/vitadock-mpv/raw/master/debs/rip4/mpv_0.32.0-2_armhf.deb
```
Install Deb 
_______
```
sudo dpkg -i mpv_0.32.0-2_armhf.deb
```

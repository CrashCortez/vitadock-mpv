# MPV Rpi4 OpenGL 

HW accelerated build.

OpenGL Mesa drivers need to be enabled in raspi-config 

```
sudo raspi-config
```
______
Dependancies needed

 
```
sudo apt-get install -y checkinstall devscripts libavcodec-dev libavdevice-dev libavfilter-dev libavformat-dev libavutil-dev libpostproc-dev libswscale-dev libluajit-5.1-dev libasound2-dev libass-dev libbluray-dev libcdio-cdda-dev libcdio-dev libcdio-paranoia-dev libdvdnav-dev libdvdread-dev libjpeg-dev libjpeg62-turbo-dev  libv4l-dev libsdl2-dev
```
______
Download Deb


```
wget https://github.com/CrashCortez/vitadock-mpv/raw/master/debs/rip4/mpv_0.32.0-2_armhf.deb
```
______
Install Deb 

```
sudo dpkg -i mpv_0.32.0-2_armhf.deb
```


A huge thanks to Salvador from [Pi Labs](https://www.youtube.com/channel/UCgfQjdc5RceRlTGfuthBs7g) for helping me fix my errors in compiling mpv with the new OpenGL drivers. 

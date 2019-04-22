# Vitadock-setup

Grab a fresh copy of Raspbian with a desktop from

https://www.raspberrypi.org/downloads/raspbian/

# 1.) Update MPV and FFMPEG

https://www.raspberrypi.org/forums/viewtopic.php?t=199775

# 2.) Setup your Pi as a BT Reciever

https://github.com/BaReinhard/Super-Simple-Raspberry-Pi-Audio-Receiver-Install

# 3.) Grab the menu scripts

```shell
git clone https://github.com/CrashCortez/vitadock-setup.git && cd vitadock-settup/menu && sudo chmod a+x *.sh && sudo chown pi:pi *.sh && cp *.sh /home/pi/scripts/
```

# 4.) Make it autostart

```shell
sudo nano /etc/rc.local
```

add the following before exit

```shell
bash /home/pi/scripts/autostart.sh &
bash /home/pi/scrits/scan.sh &
```

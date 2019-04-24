3 - Grab the menu scripts work in progress (OPTIONAL)
-----
```shell
git clone https://github.com/CrashCortez/vitadock-setup.git && cd vitadock-settup/menu && sudo chmod a+x *.sh && sudo chown pi:pi *.sh && cp *.sh /home/pi/scripts/
```

4 - Make it autostart work in progress (OPTIONAL)
-----
```shell
sudo nano /etc/rc.local
```

add the following before exit

```shell
bash /home/pi/scripts/autostart.sh &
```
4/22/2019 RC1: Vitadock RC1 
[G-Drive download link](https://drive.google.com/open?id=14fQzrgGmT0gzRNprcmJL_JI9MPACiKHi)
--------------
Here is the Releace Canidate 1 

Plug in everything, BT dongle, Ps vita usb, HDMI from tv, and finally the power last. The raspberry pi will turn on and will auto launch the viedo stream. Connect to the dock via bluetooth on the PS VITA, and once you exit the settings screen you will have both video and sound coming out of your tv.

# VitaDock-setup DIY project
![image](https://github.com/CrashCortez/vitadock-setup/blob/master/icons/dock.jpg)

[VitaDock video sneak peak](https://youtu.be/uhU4KG8FZ6s)

What you will need for this build
------------------------------------
Raspberry Pi
----
I used a Raspberry Pi 3 B+

![image](https://github.com/CrashCortez/vitadock-setup/blob/master/icons/pi3b+.jpg)

Bluetooth Dongle
-----

Any BT 4.0 should work. I used this no-name brand.

![image](https://github.com/CrashCortez/vitadock-setup/blob/master/icons/bt%20dongle.jpg)

Momentary Switch
-------

![image](https://github.com/CrashCortez/vitadock-setup/blob/master/icons/momentary.jpg)

While this is not required, it will make for a nice setup.

![image](https://github.com/CrashCortez/vitadock-setup/blob/master/icons/borken.jpg)

On my build I used the [Borken Button](https://www.youtube.com/watch?v=A08IrJ3ECuA).  

3D Printed Case
--------
![image](https://github.com/CrashCortez/vitadock-setup/blob/master/icons/dock.jpg)
![image](https://github.com/CrashCortez/vitadock-setup/blob/master/icons/back.jpg)
There are a few on thingverse, and a few people that can print them for you.

Find a dock and get it printed [3D Prints](https://www.thingiverse.com/search?q=vita+raspberry+pi&dwh=875cb8a1f5323f8)

Hacked PS VITA with usb connection
-------
...and of course a Hacked PSVITA Henkaku/enso/h-encore with uvc plugin by xerpi

![image](https://github.com/CrashCortez/vitadock-setup/blob/master/icons/vita.jpg)

# Software Instructions Setup


1- Download Raspbian with a desktop from:

https://www.raspberrypi.org/downloads/raspbian/

2 - Using Win32diskimager or etcher "write" the unzipped Raspbian image to your SD Card. 

3 - Once done remove the SD Card from PC and put your card in you pi and boot it up.

4 - After the first boot set your time zone, language etc. [AND DO NOT SKIP UPDATE ONCE ASKED!!!] Also enable SSH if you want to use a pc and putty to help set this up.

5 - Once everything is done restart your raspberry pi (system message will appear asking you to press reboot).


# Setting up the Dock

1 - Update MPV and FFMPEG
----
Follow the insructions on this forum post, it will install mpv and the codecs that we need to run the stream from the vita to the pi. 
This will take about an hour. 

https://www.raspberrypi.org/forums/viewtopic.php?t=199775

2 - Setup your Sound
-----
You can use a usb sound card an some 3.5mm cables to send the sound to the pi. I found the sound quality to be poor. So I opted to turn the pi into a BT reciver and send the sound from the vita to the pi. I bought a cheap no name dongle, worked well. 

Since we are using a BT dongle add dtoverlay=pi3-disable-bt to your /boot/config.txt.

Once again use putty or terminal on the raspberry pi
```
sudo nano /boot/config.txt
```
and add 
```
dtoverlay=pi3-disable-bt
```
Then reboot 

I used BaReinhard's Super Simple Raspberry Pi Audio Receiver Install : https://github.com/BaReinhard/Super-Simple-Raspberry-Pi-Audio-Receiver-Install

Use Putty or your Pi's terminal
-------------
```
git clone https://github.com/bareinhard/super-simple-raspberry-pi-audio-receiver-install
cd super-simple-raspberry-pi-audio-receiver-install
git checkout stretch-fix
sudo ./install.sh
```
During the setup it will ask you some questions. Here were my answers.

Answers:

Which installation would you like to choose? (1/2/3/4/5/6) : 2. Install the Raspberry Pi Audio Receiver Home Installation 

Do you want all the Devices to use the same name? (y/n) : y 

Device name: vitadock 

Airplay password (y/n): n 

Which Sound Card are you using? (0/1/2/3/4/5/6/7/8/9/10/11) : 0. No Sound Card


3 - Grab the menu scripts WIP  (OPTIONAL)
-----
```shell
git clone https://github.com/CrashCortez/vitadock-setup.git && cd vitadock-settup/menu && sudo chmod a+x *.sh && sudo chown pi:pi *.sh && cp *.sh /home/pi/scripts/
```

4 - Make it autostart  (OPTIONAL)
-----
```shell
sudo nano /etc/rc.local
```

add the following before exit

```shell
bash /home/pi/scripts/autostart.sh &
bash /home/pi/scrits/scan.sh &
```
# Releases
--------
![image](https://github.com/CrashCortez/vitadock-setup/blob/master/icons/image.jpg)

4/22/2019 RC1: Vitadock RC1 
[G-Drive download link](https://drive.google.com/open?id=14fQzrgGmT0gzRNprcmJL_JI9MPACiKHi)
--------------
Here is the Releace Canidate 1 

Plug in everything, BT dongle, Ps vita usb, HDMI from tv, and finally the power last. The raspberry pi will turn on and will auto launch the viedo stream. Connect to the dock via bluetooth on the PS VITA, and once you exit the settings screen you will have both video and sound coming out of your tv. 

Notes :
--------

- You can use xerpi's ds3/4 plugin to use controller with vita

- For audio I recommend usb bluetooth dongle

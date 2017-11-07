# pibot
NIRaspJam robot install script

## Introduction

This script Installs the following
- [Adafruit WebIDE (No Git)](https://github.com/adafruit/Adafruit-WebIDE)
- [PiShift](https://github.com/tomhartley/piShift)
- [Scriptor](https://github.com/vlee489/scriptor)

These following tools are used for programming the robots at the **Northern Ireland Raspberry Jam** Robotics course.

## Install
for Raspberry Pi
- Zero (Note that Adafruit WebIDE can't be used)
- Zero W
```
wget https://raw.githubusercontent.com/vlee489/pibot/master/install.sh
sudo bash install.sh
```

## Install (No PiShift)
for Raspberry Pi
- Model 1 A, A+ , B(rev1 + rev2), B+
- Model 2 B
- Model 3 B
- Zero (Note: You can use the Adafruit WebIDE with a WiFi adaptor)
- Zero W

```
wget https://raw.githubusercontent.com/vlee489/pibot/master/installNoPishift.sh
sudo bash installNoPishift.sh
```

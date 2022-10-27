# Nesoid

English | [简体中文](README_CH.MD)

Nesoid is a very old NES emulator for Android devices, which was born in the Android 2.x era.

Nesoid is open source. You can get the latest source code [here](https://sourceforge.net/p/nesoid/code/).

This repository is based on reverse engineering of the final version [com.androidemu.nes_61](https://sourceforge.net/projects/nesoid/files/com.androidemu.nes_61.apk/download). And with some modifications and fixes to accommodate modern Android devices.

## What have I modified

- Added Simplified Chinese translation
- Removed some obsolete stuff
- Redesigned dialog for back button when gaming
  - Now while gaming, if you press the back button, you can perform some quick actions
  - Before that you should press the menu key to load/save state, fast-forward, reset, etc. However, in modern Android OS, the menu key has long been abandoned
- Optimized virtual (touch) keyboard
  - Redrawn virtual keyboard image (mimicking MyBoy!)
  - Added larger virtual keyboard option
  - Optimized the layout to make it more suitable for large-screen devices
- Support auto-rotate and reverse landscape
- Support to open nsf files directly
- Change the save location of in-game screenshots to `/sdcard/Pictures/Screenshots`
- ... and some other fixes

## Known issues

- Can not open FDS rom, although Nesoid claims to support

## How to compile

- Prepare the jdk environment
- Download [apktool_2.6.1.jar](https://github.com/iBotPeaches/Apktool/releases/download/v2.6.1/apktool_2.6.1.jar)
- `java -jar apktool.jar b <path of this project>`

## FAQ

1. Why decompile the apk instead of recompiling it from source?

> For three reasons：
> 1. Ancient stuff should keep it ancient, but also means compatibility
> 2. I don't really understand how to compile apk from source
> 3. I'm lazy:)


# Nesoid

English | [简体中文](README_CH.md)

Nesoid is a very old NES emulator for Android devices, which was born in the Android 2.x era.

~~Nesoid is open source. You can get the latest source code [here](https://f-droid.org/repo/com.androidemu.nes_61_src.tar.gz).~~

This repository is based on reverse engineering of the final version (versionCode: `62`, versionName: `2.5.0`). And with some modifications and fixes to accommodate modern Android devices.

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
- Support for hiding the navbar in fullscreen mode
- Redrawn app icon
- Enable hardware acceleration
- Change the save location of in-game screenshots to `/sdcard/Pictures/Screenshots`
- ... and some other fixes

## Download

[Github Releases](https://github.com/Pzqqt/com.androidemu.nes/releases/latest)

## How to compile

- Prepare the jdk environment
- Download [apktool_2.6.1.jar](https://github.com/iBotPeaches/Apktool/releases/download/v2.6.1/apktool_2.6.1.jar)
- `java -jar apktool_2.6.1.jar b <path of this project>`

## FAQ

1. Why decompile the apk instead of recompiling it from source?

> For three reasons：
> 1. Ancient stuff should keep it ancient, but also means compatibility
> 2. The source code for the latest version (`62-2.5.0`) can't seem to be found on the web
> 3. I'm lazy:)

2. Why do I experience dropped frames when playing games?

> Most likely it's because your device's screen refresh rate is higher than 60. Please lock the screen refresh rate to 60 in system settings.

3. Does it support FDS roms?

> Yes, but you need the disk drive system file (disksys.rom), then import it in the emulator settings.

4. Which roms does it support?

> The core of this emulator is based on FCEU, so its compatibility is good. But:
> 1. [UNIF (Universal NES Interchange format)](https://www.nesdev.org/wiki/UNIF) format roms are not supported
> 2. The roms of some Chinese pirated manufacturers are not supported
> 3. Rom support for mapper 163 is not good (many of the roms of China NanJing Technology (南晶科技) are mapper 163)

5. Is Net-play available?

> Yes! I tested it on a Redmi Note 5 Pro with Android 11 and another Redmi K30 with Android 12.1, and it works fine with both Bluetooth and WiFi.

6. Is Zapper available?

> Yes, but you need to turn off the virtual keyboard first.

7. Why is the input method keyboard sometimes displayed when entering the game?

> Turn on "Use input method" in app settings, do not ask me why.

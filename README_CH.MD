# Nesoid

[English](README.MD) | 简体中文

Nesoid是一个很古老的适用于Android设备的NES模拟器，它诞生于Android 2.x时代。

Nesoid是开源的。你可以在 [这里](https://sourceforge.net/p/nesoid/code/) 获取到最新的源代码。

本存储库是基于最后一个版本 [com.androidemu.nes_61](https://sourceforge.net/projects/nesoid/files/com.androidemu.nes_61.apk/download) 的逆向工程，并且为了适应现代的Android设备而做了一些修改和修复。

## 我修改了哪些东西

- 添加了简体中文翻译
- 移除了一些过时的东西
- 重新设计了游戏时按返回键的对话框
  - 现在你可以在游戏时按返回键进行一些快捷操作
  - 在此之前你应该按菜单键来进行即时存档/读档、快进、重启等操作，然而在现代的Android系统中，菜单键早已被遗弃
- 优化了虚拟（触屏）手柄
  - 重新绘制了虚拟手柄图像（模仿MyBoy!）
  - 添加了更大的虚拟手柄选项
  - 优化布局，使其更适应大屏设备
- 支持自动旋转和反向横屏
- 支持直接打开nsf文件
- 更改游戏内截图的保存位置到 `/sdcard/Pictures/Screenshots`
- 其他一些修复

## 已知的问题

- 无法打开FDS rom，虽然Nesoid声称支持

## FAQ

1. 为什么要反编译apk而不是基于源码重新编译它？

> 有三个原因：
> 1. 古老的东西应该让它保持古老，同时也意味着兼容性
> 2. 我不是很了解如何从源码编译apk
> 3. 我很懒:)

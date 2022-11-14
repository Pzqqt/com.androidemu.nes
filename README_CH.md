# Nesoid

[English](README.md) | 简体中文

Nesoid是一个很古老的适用于Android设备的NES模拟器，它诞生于Android 2.x时代。

~~Nesoid是开源的。你可以在 [这里](https://f-droid.org/repo/com.androidemu.nes_61_src.tar.gz) 获取到最新的源代码。~~

本存储库是基于最后一个版本的逆向工程（版本号: `62`, 版本名: `2.5.0`），并且为了适应现代的Android设备而做了一些修改和修复。

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
- 支持在全屏模式隐藏导航栏
- 重新绘制了应用图标
- 启用硬件加速
- 更改游戏内截图的保存位置到 `/sdcard/Pictures/Screenshots`
- 其他一些修复

## 下载

[Github Releases](https://github.com/Pzqqt/com.androidemu.nes/releases/latest)

## 编译

- 准备好jdk环境
- 下载 [apktool_2.6.1.jar](https://github.com/iBotPeaches/Apktool/releases/download/v2.6.1/apktool_2.6.1.jar)
- `java -jar apktool_2.6.1.jar b <本项目所在路径>`

## FAQ

1. 为什么要反编译apk而不是基于源码重新编译它？

> 有三个原因：
> 1. 古老的东西应该让它保持古老，同时也意味着兼容性
> 2. 网上似乎找不到最新版本（`62-2.5.0`）的源码
> 3. 我很懒:)

2. 为什么我在玩游戏时会感受到卡顿或丢帧？

> 很有可能是因为你的设备屏幕刷新率高于60，请在系统设置中将屏幕刷新率锁定为60。

3. 支持FDS rom吗？

> 支持，但是你需要准备磁碟机系统文件（disksys.rom），然后在模拟器设置中导入它。

4. 支持哪些rom？

> 这个模拟器的核心基于FCEU，因此它的兼容性很好。但是：
> 1. 不支持[UNIF（Universal NES Interchange format）](https://www.nesdev.org/wiki/UNIF)格式的rom
> 2. 不支持某些国产寨商的rom
> 3. 对mapper 163的rom支持不是很好（南晶科技的rom绝大多数都是mapper 163）

5. 网络对战功能可用吗？

> 可以的！我在一台搭载了Android 11的Redmi Note 5 Pro和另一台搭载了Android 12.1的Redmi K30上进行了测试，无论是蓝牙联机还是WiFi联机都没问题。

6. 光枪可用吗？

> 可以的，但是你需要先关闭虚拟键盘。

7. 为什么有时候进入游戏时输入法会弹出来？

> 在app设置中把“使用输入法”开关打开，不要问我为什么。

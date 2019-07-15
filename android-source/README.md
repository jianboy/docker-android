## android-source

android 系统源码编译，android源码特别大，所以不要放到镜像中打包,所以本质上本镜像就是一个 Ubuntu附带gcc等编译工具而已。

**系统要求**

* docker中Ubuntu18
* 内存16G
* 磁盘200G SSD

## 使用

1、启动编译系统（略），下面通过docker-compose启动。

```
docker run --name aosp6 -it android-source /bin/bash

```

2、下载源码，启动编译系统

下载源码可能耗时一两天，大概50G，解压80G，在aosp还原则会120G左右。

```
sh tools/download_android_repo.sh
```

这个可以直接插上已经下载好Android系统源码的磁盘，然后把指定目录挂载到docker精选即可。

```
cd xx/aosp
docker-composer up -d
```

3、编译源码

```
sh tools/build_src.sh

```

4、测试

编译后，在 build会有对象的系统镜像文件，最好真机中刷机体验。或者虚拟机中更加镜像创建，这个时候就需要可视化环境，也就不能在docker中跑了，windows系统中安装好emulator，不是某某模拟器，某某模拟器自带镜像：

```
emulator -kernel ./kernel/goldfish-android-3.4/arch/x86/boot/zImage　&
```


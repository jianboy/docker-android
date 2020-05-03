## docker-android


| images     | desc | other |
| -------- | ---- | ---- |
| android-dev |   基于Ubuntu的Android编译环境。   |      |
| android-source     |  基于Ubuntu的安卓系统源码编译。    |      |
|          |      |      |

## usage

1. 启动docker环境

```
docker-compose up -d
```

2. 进入容器编译项目

```
aapt package -f \
-M AndroidManifest.xml \ 
-I "$ANDROID_HOME/platforms/android-N/android.jar" \
-S res/ \
-J gen/ \
-m \

```
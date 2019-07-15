#!bin/sh

mkdir ~/bin
PATH=~/bin:$PATH

curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

# 创建一个空目录用来保存android源代码
mkdir ~/aosp
cd ~/aosp

# 指定从清华的镜像，只下6.0.1版本Android 
repo init -u https://aosp.tuna.tsinghua.edu.cn/platform/manifest -b android-6.0.1_r46
#同步源码树，并发设置为8，不要太大
repo sync -j8
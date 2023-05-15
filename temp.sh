#!/bin/sh

#备份
cp build.gradle build.gradle.bak

#修改版本号
sed -i '' 's/def UPEX_FLUTTER_BASE_VERSION = .*/def UPEX_FLUTTER_BASE_VERSION = "2.0.0"/g' build.gradle

#回滚
cp build.gradle.bak build.gradle
# 删除备份文件
rm build.gradle.bak
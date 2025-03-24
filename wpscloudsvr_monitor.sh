#!/bin/bash
# 循环检测 wpsoffice 相关进程
while true; do
    if pgrep -f "wpsoffice" > /dev/null; then
        sleep 60  # 等待 1 分钟
    else
        break  # 没有 wpsoffice 进程时退出循环
    fi
done

pkill wpscloudsvr

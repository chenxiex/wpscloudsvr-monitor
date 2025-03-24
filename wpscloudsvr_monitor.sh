#!/bin/bash
# 获取当前脚本的进程 ID
MYPID=$$
# 查找与脚本名匹配的进程，排除自身
if pgrep -f "$(basename "$0")" | grep -v "$MYPID" >/dev/null; then
    exit 1
fi
# 循环检测 wpsoffice 相关进程
while true; do
    if pgrep -f "wpsoffice" > /dev/null; then
        sleep 60  # 等待 1 分钟
    else
        break  # 没有 wpsoffice 进程时退出循环
    fi
done

pkill wpscloudsvr

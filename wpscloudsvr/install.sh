#!/bin/bash
dir=$(dirname $0)

# 检查wpscloudsvr是否为ELF文件
if file /opt/kingsoft/wps-office/office6/wpscloudsvr | grep -q "ELF"; then
    mv /opt/kingsoft/wps-office/office6/wpscloudsvr /opt/kingsoft/wps-office/office6/wpscloudsvr.real
else
    echo "wpscloudsvr is not ELF file, skip"
fi
cp ${dir}/wpscloudsvr /opt/kingsoft/wps-office/office6/
cp ${dir}/monitor.sh /opt/kingsoft/wps-office/office6/
cp ${dir}/wpscs_monitor.service /etc/systemd/user/
systemctl daemon-reload
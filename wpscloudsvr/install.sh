#!/bin/bash
dir=$(dirname $0)
if [ ! -e /opt/kingsoft/wps-office/office6/wpscloudsvr.real ]; then
    mv /opt/kingsoft/wps-office/office6/wpscloudsvr /opt/kingsoft/wps-office/office6/wpscloudsvr.real 
fi
cp ${dir}/wpscloudsvr /opt/kingsoft/wps-office/office6/
cp ${dir}/monitor.sh /opt/kingsoft/wps-office/office6/ 
cp ${dir}/wpscs_monitor.service /etc/systemd/user/
systemctl daemon-reload
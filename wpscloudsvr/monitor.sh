#!/bin/bash
if pgrep -f "wpsoffice" > /dev/null; then
	exit 1
fi

pkill -x wpscloudsvr.rea

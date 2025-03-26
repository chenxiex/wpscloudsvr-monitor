# wpscloudsvr monitor
一个简单的脚本，用于在 WPS 365 for Linux 退出后自动杀死残留 wpscloudsvr 进程。

## 使用方法

运行`wpscloudsvr/install.sh`。每次更新后需要再次运行。

对于 Arch Linux，提供一个 pacman hook 以方便自动运行。将 wpscloudsvr.hook 和 wpscloudsvr 复制到`/etc/pacman.d/hooks/`即可。

默认情况下，wpsoffice 启动后，每分钟检测一次 wpsoffice 是否运行。因此在 wpsoffice 退出后，最多需要等待 1 分钟才能令 wpscloudsvr 退出。可以修改 wpscs_monitor.service 来调整检测的间隔。
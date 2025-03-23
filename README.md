# wpscloudsvr monitor
一个简单的脚本，用于在 WPS 365 for Linux 退出后自动杀死残留 wpscloudsvr 进程。

## 使用方法

对于 Arch Linux，将 wpscloudsvr 和 wpscloudsvr.hook 放置在 `/etc/pacman.d/hooks/` 文件夹下即可。

对于其它 Linux 系统，使用命令：
```bash
mv /opt/kingsoft/wps-office/office6/wpscloudsvr /opt/kingsoft/wps-office/office6/wpscloudsvr.real && cp ./wpscloudsvr /opt/kingsoft/wps-office/office6/wpscloudsvr
```
每次 wps 更新后都要重新执行一遍。

默认情况下，wpsoffice 启动后，每分钟检测一次 wpsoffice 是否运行。因此在 wpsoffice 退出后，最多需要等待 1 分钟才能令 wpscloudsvr 退出。可以修改 wpscloudsvr 内的 sleep 语句来调整检测的间隔。
#!/bin/bash

#url=https://github.com/wi1dcard/v2ray-exporter/releases/latest/download/v2ray-exporter_linux_amd64
#wget $url -O /tmp/v2ray-exporter
#mv /tmp/v2ray-exporter /usr/local/bin/v2ray-exporter

cp binary/v2ray-* /usr/local/bin/v2ray_exporter
chmod +x /usr/local/bin/v2ray_exporter

useradd v2ray_exporter --shell=/sbin/nologin

cp v2ray_exporter.service /etc/systemd/system/
systemctl enable v2ray_exporter --now



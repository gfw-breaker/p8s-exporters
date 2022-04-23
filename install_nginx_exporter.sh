#!/bin/bash

version="0.10.0"

#wget https://github.com/prometheus/node_exporter/releases/download/v${version}/node_exporter-${version}.linux-amd64.tar.gz
wget https://github.com/nginxinc/nginx-prometheus-exporter/releases/download/v${version}/nginx-prometheus-exporter_${version}_linux_amd64.tar.gz 
tar xvfz nginx-prometheus-exporter*amd64.tar.gz
cp nginx-prometheus-exporter /usr/local/bin/nginx_exporter

useradd nginx_exporter --shell=/sbin/nologin

cp nginx_exporter.service /etc/systemd/system/
systemctl enable nginx_exporter --now



#!/bin/bash

version="1.3.1"

wget https://github.com/prometheus/node_exporter/releases/download/v${version}/node_exporter-${version}.linux-amd64.tar.gz
tar xvfz node_exporter-*.*-amd64.tar.gz
cd node_exporter-*.*-amd64
cp node_exporter /usr/local/bin/

useradd node_exporter --shell=/sbin/nologin

cp node_exporter.service /etc/systemd/system/
systemctl enable node_exporter --now



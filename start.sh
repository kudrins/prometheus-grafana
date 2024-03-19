#!/bin/bash
setenforce 0
sed -i 's/^SELINUX=.*/SELINUX=disabled/g' /etc/selinux/config

firewall-cmd --permanent --add-port=9090/tcp --add-port=9093/tcp --add-port=9094/{tcp,udp} --add-port=9100/tcp --add-port=3000/tcp
firewall-cmd --reload

systemctl daemon-reload

systemctl start prometheus
systemctl enable prometheus

systemctl start node_exporter
systemctl enable node_exporter

systemctl start alertmanager
systemctl enable alertmanager

systemctl start grafana-server
systemctl enable grafana-server

#!/bin/bash
# Скачать grafana-enterprise-9.5.2-1.x86_64.rpm через VPN и поместить на сервер
yum -y localinstall /root/grafana-enterprise-9.5.2-1.x86_64.rpm

# Стартуем сервис
firewall-cmd --permanent --add-port=3000/tcp
firewall-cmd --reload

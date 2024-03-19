#!/bin/bash

# Устанавливаем вспомогательные пакеты и скачиваем Prometheus
yum update -y
yum install wget vim -y
wget https://github.com/prometheus/prometheus/releases/download/v2.50.1/prometheus-2.50.1.linux-amd64.tar.gz

# Создаем пользователя и нужные каталоги, настраиваем для них владельцев
useradd --no-create-home --shell /bin/false prometheus
mkdir /etc/prometheus
mkdir /var/lib/prometheus
chown prometheus:prometheus /etc/prometheus
chown prometheus:prometheus /var/lib/prometheus

# Распаковываем архив, для удобства переименовываем директорию и копируем бинарники в /usr/local/bin
tar -xvzf prometheus-2.50.1.linux-amd64.tar.gz
mv prometheus-2.50.1.linux-amd64 prometheuspackage
cp prometheuspackage/prometheus /usr/local/bin/
cp prometheuspackage/promtool /usr/local/bin/

# Меняем владельцев у бинарников
chown prometheus:prometheus /usr/local/bin/prometheus
chown prometheus:prometheus /usr/local/bin/promtool

# По аналогии копируем библиотеки
cp -r prometheuspackage/consoles /etc/prometheus
cp -r prometheuspackage/console_libraries /etc/prometheus
chown -R prometheus:prometheus /etc/prometheus/consoles
chown -R prometheus:prometheus /etc/prometheus/console_libraries

chown prometheus:prometheus /etc/prometheus/prometheus.yml

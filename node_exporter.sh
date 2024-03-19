#!/bin/bash
# Скачиваем и распаковываем Node Exporter
wget https://github.com/prometheus/node_exporter/releases/download/v1.7.0/node_exporter-1.7.0.linux-amd64.tar.gz
tar xzfv node_exporter-1.7.0.linux-amd64.tar.gz

# Создаем пользователя, перемещаем бинарник в /usr/local/bin
useradd -rs /bin/false nodeusr
mv node_exporter-1.7.0.linux-amd64/node_exporter /usr/local/bin/


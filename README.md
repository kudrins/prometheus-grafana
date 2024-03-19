## Prometheus

Среда выполнения ДЗ: VM Centos 8 в VMware vSphere 7

### Файлы:
```
- newvm.yml:              ansible playbook развертывания VM
                          и заданных сервисов

- prometheus.yml:         файл конфигурации Prometheus
                          /etc/prometheus/prometheus.yml
- rules.yml:              файл задания правил
                          /etc/prometheus/rules.yml
- alertmanager.service:   файл конфигурации сервиса alertmanager
                          etc/systemd/system/alertmanager.service
- node_exporter.service:  файл конфигурации сервиса node_exporter
                          etc/systemd/system/node_exporter.service
- prometheus.service:     файл конфигурации сервиса prometheus
                          etc/systemd/system/prometheus.service
						  
- alert_manager.sh:       скрипт установки alertmanager
- grafana.sh:             скрипт установки grafana
- node_exporter.sh:       скрипт установки node_exporter
- prometheus_install.sh:  скрипт установки prometheus
- start.sh:               скрипт запуск сервисов

- ansible.jpg:            скриншот работы ansible
- grafana.jpg:            дашбоард grafana
```

 

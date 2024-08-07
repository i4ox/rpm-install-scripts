#!/bin/bash

# Добавляем новые опции в dnf
echo "max_parallel_downloads=10" | sudo tee -a /etc/dnf/dnf.conf > /dev/null
echo "defaultyes=True" | sudo tee -a /etc/dnf/dnf.conf > /dev/null
echo "keepcache=True" | sudo tee -a /etc/dnf/dnf.conf > /dev/null

sudo dnf autoremove
sudo dnf clean

# Добавляем авто-обновление
sudo dnf install dnf-automatic
sudo systemctl enable dnf-automatic.timer

# Обновление системы
sudo dnf upgrade --refresh
sudo dnf update

#!/bin/bash

# Particiones

PartDisc_1G=$(lsblk | grep 1G | awk '{print $1}')

echo "Particion disco de 1G - punto A"

sudo fdisk /dev/$PartDisc_1G << EOF
n
p



t
8E
w
EOF

echo "Limpiando la particion"

sudo wipefs -a /dev/${PartDisc_1G}1

PartDisc_2G=$(lsblk | grep 2G | head -n 1 | awk '{print $1}')

sudo fdisk /dev/$PartDisc_2G << EOF
n
p



t
8E
w
EOF

echo "Disco Particionado"

echo "Limpiando la particion"

sudo wipefs -a /dev/${PartDisc_2G}1

# Creacion de los volumen fisico, grupos de volumen y volumen logico

echo "Comenzando PV, VG, LV"

sudo pvcreate /dev/${PartDisc_1G}1
sudo pvcreate /dev/${PartDisc_2G}1
sudo vgcreate vg_temp /dev/${PartDisc_1G}1
sudo vgcreate vg_datos /dev/${PartDisc_2G}1
sudo lvcreate -L 5M vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo lvcreate -L 512M vg_temp -n lv_swap

echo "Formateando discos"

sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo swapon /dev/mapper/vg_temp-lv_swap

echo "Montando las particiones"

sudo mkdir /work/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker

sudo systemctl restart docker

df -h
lsblk

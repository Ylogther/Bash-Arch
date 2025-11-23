#!/bin/bash
set -e

if [ "$(whoami)" != "root" ]; then
    echo "❌ Este script debe ejecutarse como root o con sudo." >&2
    exit 1
fi

echo "✅ Ejecutando como root..."

sudo pacman -Syu

tpm_dir="tpm"
paginaKernel="https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.4.tar.xz" #CAMBIALO POR LA ULTIMA VERSION DEL KERNEL

echo "Instalando dependencias ..."
sudo pacman -S base-devel bc kmod libelf ncurses openssl git

if pacman -Qq bc kmod libelf ncurses openssl git &>/dev/null; then
    echo "✅ Todos los paquetes están instalados."
else
    echo "❌ Faltan algunos paquetes, tendras que instalarlo manualmente"
    exit 1
fi

echo "creando carpeta temporal "$tpm_dir"..."
mkdir -p "$tpk_dir" || {echo "no se pudo crear la carpeta "$tpm_dir"";exit 1;}
cd "$tpm_dir"

echo "instalando y descomprimiendo kernel"
wget "$paginaKernel"

#!/bin/bash

set -e          # Exit immediately if a command fails
set -u          # Treat unset variables as errors
set -o pipefail # Prevent errors in a pipeline from being masked

echo "instalacion de dependencias previas"
dependencias=(
  git vim nano curl perl wget rust haruna libreoffice-fresh flatpak obs-studio btop nautilus gcc make cmake ttf-dejavu ttf-liberation noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra swww gwenview
)
sudo pacman -S $dependencias

REPO_URL="https://github.com/Axenide/Ax-Shell.git"
INSTALL_DIR="$HOME/.config/Ax-Shell"
PACKAGES=(
  awww-git
  brightnessctl
  cava
  cliphist
  ddcutil
  fabric-cli-git
  gnome-bluetooth-3.0
  gobject-introspection
  gpu-screen-recorder
  hypridle
  hyprlock
  hyprpicker
  hyprshot
  hyprsunset
  imagemagick
  libnotify
  matugen-bin
  network-manager-applet
  networkmanager
  nm-connection-editor
  noto-fonts-emoji
  nvtop
  playerctl
  power-profiles-daemon
  python-fabric-git
  python-gobject
  python-ijson
  python-numpy
  python-pillow
  python-psutil
  python-pywayland
  python-requests
  python-setproctitle
  python-toml
  python-watchdog
  swappy
  tesseract
  tesseract-data-eng
  tesseract-data-spa
  tmux
  ttf-nerd-fonts-symbols-mono
  unzip
  upower
  uwsm
  vte3
  webp-pixbuf-loader
  wl-clipboard
)

#instalar yay

if [ -f ../utilidades/install_yay.sh ]; then
    echo "La carpeta ../utilidades/install_yay.sh existe"
    ./../utilidades/install_yay.sh
else
    echo "La carpeta ../utilidades/install_yay.sh NO existe"
    echo "instalando repo .."
    mkdir tm
    cd tm
    curl -fsSL https://raw.githubusercontent.com/Ylogther/Bash-Arch/refs/heads/main/utilidades/install_yay.sh -o install_yay.sh
    chmod +x install_yay.sh
    ./install_yay.sh
    cd ..
    rm -r tm

fi


aur_helper="yay"

# Prevent running as root
if [ "$(id -u)" -eq 0 ]; then
  echo "Este archivo no se puedo correr con root."
  exit 1
fi

# Clone or update the repository
if [ -d "$INSTALL_DIR" ]; then
  echo "Actualizando Ax-Shell..."
  git -C "$INSTALL_DIR" pull
else
  echo "Clonando Ax-Shell..."
  git clone --depth=1 "$REPO_URL" "$INSTALL_DIR"
fi

# Install required packages using the detected AUR helper (only if missing)
echo "Instalando paquetes requeridos..."
$aur_helper -Syy --needed --devel --noconfirm "${PACKAGES[@]}" || true

echo "instalando gray-git..."
yes | $aur_helper -Syy --needed --devel --noconfirm gray-git || true

echo "Instalando fuentes requeridas..."

FONT_URL="https://github.com/zed-industries/zed-fonts/releases/download/1.2.0/zed-sans-1.2.0.zip"
FONT_DIR="$HOME/.fonts/zed-sans"
TEMP_ZIP="/tmp/zed-sans-1.2.0.zip"

# Check if fonts are already installed
if [ ! -d "$FONT_DIR" ]; then
  echo "Descargando fuentes para $FONT_URL..."
  curl -L -o "$TEMP_ZIP" "$FONT_URL"

  echo "Extrayendo fuentes a $FONT_DIR..."
  mkdir -p "$FONT_DIR"
  unzip -o "$TEMP_ZIP" -d "$FONT_DIR"

  echo "Limpiando..."
  rm "$TEMP_ZIP"
else
  echo "Las fuentes ya están instaladas. Omitir descarga y extracción."
fi

# Gestión de servicios de red
echo "Configurando servicios de red..."

# Deshabilitar iwd si está habilitado o activo
if systemctl is-enabled --quiet iwd 2>/dev/null || systemctl is-active --quiet iwd 2>/dev/null; then
  echo "Deshabilitando iwd..."
sudo systemctl disable --now iwd
else
  echo "iwd ya está deshabilitado."
fi

# Habilitar NetworkManager si no está habilitado
if ! systemctl is-enabled --quiet NetworkManager 2>/dev/null; then
  echo "Habilitando NetworkManager..."
  sudo systemctl enable NetworkManager
else
  echo "NetworkManager ya está habilitado."
fi

# Iniciar NetworkManager si no está en ejecución
if ! systemctl is-active --quiet NetworkManager 2>/dev/null; then
  echo "Iniciando NetworkManager..."
  sudo systemctl start NetworkManager
else
  echo "NetworkManager ya está en ejecución."
fi

# Copiar las fuentes locales si no están ya presentes
if [ ! -d "$HOME/.fonts/tabler-icons" ]; then
  echo "Copiando fuentes locales a $HOME/.fonts/tabler-icons..."
  mkdir -p "$HOME/.fonts/tabler-icons"
  cp -r "$INSTALL_DIR/assets/fonts/"* "$HOME/.fonts"
else
  echo "Las fuentes locales ya están instaladas. Omitiendo copia."
fi

python "$INSTALL_DIR/config/config.py"
echo "Iniciando Ax-Shell..."
killall ax-shell 2>/dev/null || true
uwsm app -- python "$INSTALL_DIR/main.py" >/dev/null 2>&1 &
disown

echo "Instalación completa."


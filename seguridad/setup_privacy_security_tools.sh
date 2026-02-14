#!/bin/bash
# script: setup_privacy_security_tools.sh

set -euo pipefail

#####################################
# CONFIGURACIÓN
#####################################

LOGFILE="install_log.txt"

# Activar BlackArch (true / false)
INSTALL_BLACKARCH="${INSTALL_BLACKARCH:-false}"

#####################################
# LOGGING
#####################################

exec > >(tee -i "$LOGFILE")
exec 2>&1

GREEN='\033[1;32m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
NC='\033[0m'

log_info()    { echo -e "${YELLOW}[*] $1${NC}"; }
log_success() { echo -e "${GREEN}[✓] $1${NC}"; }
log_error()   { echo -e "${RED}[✗] $1${NC}"; }

#####################################
# CHECKS
#####################################

log_info "Verificando dependencias críticas del sistema..."

for cmd in sudo pacman git curl; do
    if ! command -v "$cmd" &>/dev/null; then
        log_error "El comando '$cmd' es requerido y no está instalado."
        exit 1
    fi
done

log_info "Verificando conexión a Internet..."
curl -Is https://archlinux.org >/dev/null || {
    log_error "No tienes conexión a Internet funcional."
    exit 1
}

#####################################
# PROTONVPN (FLATPAK)
#####################################

instalar_protonvpn() {
    log_info "Instalando ProtonVPN (GUI) desde Flatpak..."
    log_info "Descarga aprox: ~150 MB | Instalado: ~400 MB"

    if ! command -v flatpak &>/dev/null; then
        sudo pacman -S --noconfirm --needed flatpak
    fi

    sudo flatpak remote-add --if-not-exists flathub \
        https://flathub.org/repo/flathub.flatpakrepo

    sudo flatpak install -y flathub com.protonvpn.www

    log_success "ProtonVPN instalado correctamente."
    echo "    Ejecutar con: flatpak run com.protonvpn.www"
}

#####################################
# YAY
#####################################

ensure_yay() {
    if ! command -v yay &>/dev/null; then
        log_info "'yay' no encontrado. Instalando..."
        rm -rf tm 2>/dev/null || true
        mkdir tm
        cd tm
        curl -fsSL https://raw.githubusercontent.com/Ylogther/Bash-Arch/refs/heads/main/utilidades/install_yay.sh -o install_yay.sh
        chmod +x install_yay.sh
        ./install_yay.sh
        cd ..
        rm -r tm
    fi
}

#####################################
# VERACRYPT (AUR)
#####################################

instalar_veracrypt() {
    log_info "Instalando VeraCrypt desde AUR..."
    log_info "Descarga aprox: ~25 MB | Instalado: ~70 MB"

    ensure_yay
    yay -S --needed veracrypt

    log_success "VeraCrypt instalado correctamente."
}

#####################################
# BLACKARCH
#####################################

enable_blackarch_repo() {
    if grep -q "^\[blackarch\]" /etc/pacman.conf; then
        log_info "Repositorio BlackArch ya habilitado."
        return
    fi

    log_info "Habilitando repositorio BlackArch..."
    curl -fsSLO https://blackarch.org/strap.sh
    chmod +x strap.sh
    sudo ./strap.sh
    rm -f strap.sh
    echo "BlackArch instalado"
}

#####################################
# CLEANUP
#####################################


#####################################
# MAIN
#####################################

log_info "Iniciando instalación completa..."

instalar_protonvpn
instalar_veracrypt
enable_blackarch_repo

log_success "Todos los componentes fueron instalados correctamente."
echo "📄 Revisa el log en: $LOGFILE"

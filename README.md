# 🎛️ Bash-Arch – Scripts para Arch Linux con Hyprland, Gaming, Multimedia y Seguridad

**Versión**: 5.1.3 | **Licencia**: GPLv3  
<p align="left">
  <img src="https://img.shields.io/badge/estado-estable-brightgreen" alt="Estado: Estable" />
  <img src="https://img.shields.io/github/license/Ylogther/bash-arch?color=blue" alt="Licencia: GPLv3" />
</p>

🔧 Herramienta profesional para automatizar instalaciones, configuraciones y mantenimiento en Arch Linux, optimizada para Hyprland, gaming, multimedia, ciberseguridad y desarrollo.

🧭 Elige tu versión

🔹 Versión Estable
Te recomendamos esta versión si buscas estabilidad, confiabilidad y una experiencia sin errores. Ideal para uso diario o en entornos de trabajo.       
:https://github.com/Ylogther/bash-arch

🔸 Versión Beta/Inestable
Perfecta si quieres probar las últimas funciones, mejoras experimentales y cambios recientes. ⚠️ Puede contener errores, pero es ideal para testers y usuarios curiosos.
:https://github.com/Ylogther/bash-arch-BETA

🎯 Te recomendamos entrar a la versión estable si quieres algo que no te provoque errores. Pero si quieres probar las últimas actualizaciones, entonces juega con la versión beta.



**Compatibilidad completa con drivers Intel, AMD y NVIDIA.**

> ✨ Ideal para desarrolladores, creadores de contenido y entusiastas del Linux personalizado.

---

## 📚 Tabla de contenidos

- [🧰 Características principales](#-características-principales)
- [📂 Estructura del repositorio](#-estructura-del-repositorio)
- [🚀 Instalación rápida](#-instalación-rápida)
- [🧪 Script maestro (opcional)](#-script-maestro-opcional)
- [💡 Ejemplos de uso](#-ejemplos-de-uso)
- [🧑‍💻 Requisitos](#-requisitos)
- [📖 Licencia](#-licencia)
- [🤝 Contribuciones](#-contribuciones)
- [🎥 Proyecto mantenido por](#-proyecto-mantenido-por)

---

## 🧰 Características principales

- 📦 Instalación automatizada de software clave (desarrollo, multimedia, gaming, virtualización).
- 🖼️ Configuración optimizada para Hyprland con dotfiles personalizados.
- 🔧 Scripts para mantenimiento completo (AUR, Flatpak, pip, npm...).
- 🎥 Instalación de herramientas de grabación y streaming (OBS, plugins, etc.).
- 🧪 Soporte para entornos virtualizados (libvirt, QEMU, Btrfs).
- 🔒 Scripts útiles para ciberseguridad y privacidad (firewall, fail2ban, cambio MAC).

---

## 📂 Estructura del repositorio

```bash
bash-arch/
├── actualizacion/                    # Scripts para mantener Arch actualizado correctamente
│   └── full_update.sh               # Realiza una actualización completa: sistema + AUR + limpieza
├── desarrollo/                      # Herramientas esenciales para entornos de desarrollo
│   ├── README.md                    # Explicación de los scripts de desarrollo
│   ├── instalar_blackarch.sh        # Añade y sincroniza el repositorio BlackArch para pentesting
│   ├── install_devtools.sh          # Instala base-devel y herramientas de desarrollo estándar
│   ├── ml4w_install.sh              # Instala dotfiles avanzados "MyLinuxForWork" para Hyprland
│   └── setup_dev_env.sh             # Automatiza configuración de entorno dev general (git, zsh, etc.)
├── gaming/                          # Scripts para optimizar el sistema para juegos
│   ├── README.md                    # Detalles sobre configuraciones gaming incluidas
│   ├── drivers_install.sh           # Instala automáticamente drivers NVIDIA, AMD o Intel según hardware
│   ├── instalacion-gaming.sh        # Aplica ajustes y paquetes extra para gaming (gamemode, mangohud, etc.)
│   └── mas/                         # Scripts adicionales específicos para juegos
│       └── Minecraft-install.sh     # Instala el launcher oficial de Minecraft desde el AUR
├── icons/                           # Temas de iconos listos para ser instalados
│   ├── Orbian-Ultradark.zip         # Tema para mouse
│   └── Vivid-Dark-Icons.tar.gz      # Tema para iconos
├── multimedia/                      # Setup para edición de video, OBS y multimedia en general
│   ├── README.md                    # Información general de esta sección
│   ├── davinci_resolve_deps.sh     # Instala las dependencias que requiere DaVinci Resolve en Arch
│   ├── multimedia_install.sh        # Instala paquetes de edición, audio y video (Kdenlive, Audacity, etc.)
│   ├── streaming_install.sh         # Instala OBS Studio y plugins útiles para streamers
│   └── solucion abrir davinci resolve/
│       └── d.sh                     # Fix específico para errores comunes al lanzar DaVinci
├── seguridad/                       # Scripts de privacidad, seguridad y protección de red
│   ├── README.md                    # Detalla herramientas y scripts de esta categoría
│   ├── cambio_mac.sh                # Cambia la dirección MAC aleatoriamente o manualmente
│   ├── firewall_fail2ban.sh         # Configura un firewall simple y activa fail2ban
│   ├── install_log.txt              # Registro de instalaciones hechas (útil para auditoría)
│   └── setup_privacy_security_tools.sh  # Instala herramientas como Tor, ufw, dnscrypt, etc.
├── solucion_problema_wifi/          # Diagnóstico y solución a desconexiones Wi-Fi en Arch
│   ├── README.md                    # Explicación del enfoque de solución
│   └── wifi_watchdog.sh             # Script watchdog: reinicia Wi-Fi si detecta caída de red
├── utilidades/                      # Scripts que no encajan en una categoría específica
│   └── install_yay.sh               # Instala yay desde el AUR de forma segura y limpia
├── virtualizacion/                  # Herramientas para virtualización con virt-manager y QEMU
│   ├── README.md                    # Detalla cómo usar los scripts de esta carpeta
│   └── install-virt-manager.sh      # Instala virt-manager, QEMU y configura libvirtd correctamente
├── LICENSE                          # Licencia GPLv3 para todo el proyecto
├── README.md                        # Introducción, instrucciones y diagrama del repositorio
├── aparte_por_si_no_tengo_x11.txt  # Notas 
├── dato_para_juego.txt             # Dato técnico para ver rendimiento de un juego
└── subirgithub.sh                  # Script para hacer push automático del proyecto a GitHub


````

---

## 🚀 Instalación rápida

```bash
git clone https://github.com/Ylogther/bash-arch.git
cd bash-arch
chmod +x */*.sh
```

---

## 🧪 Script maestro (opcional)

Para ejecutar todo de forma automatizada:

```bash
chmod +x install.sh
sudo ./install.sh
```

Este script ejecuta los módulos principales en orden lógico (actualización, yay, herramientas, etc.).

---

## 💡 Ejemplos de uso

```bash
# Instalar yay (AUR helper)
bash utilidades/install_yay.sh

# Instalar herramientas de desarrollo
bash desarrollo/install_devtools.sh

# Configurar entorno Hyprland personalizado
bash desarrollo/ml4w_install.sh

# Instalar OBS Studio y plugins
bash multimedia/streaming_install.sh

# Activar firewall + fail2ban
bash seguridad/firewall_fail2ban.sh

# Corregir DaVinci Resolve
bash multimedia/solucion\ abrir\ davinci\ resolve/d.sh
```

---

## 🧑‍💻 Requisitos

* Distribución GNU/Linux (preferiblemente Arch Linux o derivadas)
* Conexión a Internet
* Permisos sudo
* Conocimientos básicos de terminal Bash

---

## 📖 Licencia

Este proyecto está licenciado bajo la **GNU GPL v3**. Puedes ver los términos completos en el archivo [`LICENSE`](LICENSE).

```
Este software es libre: puedes redistribuirlo y/o modificarlo bajo los términos de la Licencia Pública General de GNU, publicada por la Free Software Foundation, ya sea la versión 3 de la Licencia, o (a tu elección) cualquier versión posterior.
```

---

## 🤝 Contribuciones

¡Las contribuciones son bienvenidas!

Antes de hacer un PR, por favor:

1. Verifica los scripts con `shellcheck`
2. Asegúrate de usar `chmod +x` para scripts ejecutables
3. Comenta claramente la función de cada script
4. Usa un estilo limpio y sin dependencias innecesarias

Puedes contribuir con:

* Nuevos módulos compatibles
* Correcciones de errores
* Propuestas de optimización

---

## 🎥 Proyecto mantenido por

**Ylogther**
🧠 Hacker ético | 🛠️ Dev multimedia y web
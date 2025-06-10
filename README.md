
# 🎛️ Bash-Arch: Colección de Scripts para Arch Linux + Hyprland

**Versión**: 5.1.3 | **Licencia**: GPLv3  
![Estado](https://img.shields.io/badge/estado-estable-brightgreen)
![Licencia](https://img.shields.io/github/license/Ylogther/bash-arch?color=blue)

🔧 Herramienta profesional para automatizar instalaciones, configuraciones y mantenimiento en Arch Linux con enfoque en Hyprland, gaming, multimedia, seguridad y desarrollo

ESTA HERRAMIENTA ES COMPATIBLE CON DRIVERS INTEL, AMD, NVIDIA, ETC.

> ✨ Ideal para desarrolladores, creadores de contenido, y entusiastas del entorno Linux personalizado con Hyprland.

---

## 🧰 Características principales

- 📦 Automatización de instalación de software esencial (desarrollo, multimedia, virtualización, etc.)
- 🖼️ Configuración optimizada para Hyprland y dotfiles personalizados.
- 🛠️ Scripts para mantenimiento y actualización del sistema (incluyendo AUR, Flatpak, pip, npm...).
- 🎥 Instalación de herramientas multimedia y de streaming.
- 🧪 Preparación de entorno para máquinas virtuales (con Btrfs y libvirt).
- 🔒 Scripts útiles para ciberseguridad como cambio de MAC.

---

## 📂 Estructura del repositorio

```bash
bash-arch/
├── actualizacion/                 # Scripts para actualizar el sistema
│   └── full_update.sh             # Actualización completa del sistema
├── desarrollo/                   # Herramientas y setups para desarrollo
│   ├── README.md                 # Información general sobre scripts de desarrollo
│   ├── instalar_blackarch.sh     # Instalación del repositorio BlackArch
│   ├── install_devtools.sh       # Instalación de herramientas de desarrollo (base-devel, etc.)
│   ├── ml4w_install.sh           # Instalación de ML4W (dotfiles de alto nivel)
│   └── setup_dev_env.sh          # Configuración completa del entorno de desarrollo
├── gaming/                      # Scripts para optimizar y preparar el entorno gaming
│   ├── README.md                 # Información sobre configuraciones y optimizaciones gaming
│   ├── drivers_install.sh        # Instalación de drivers (NVIDIA, Intel, AMD, etc.)
│   ├── instalacion-gaming.sh     # Configuraciones adicionales para entorno gaming
│   └── mas/                      # Extras específicos para gaming
│       └── Minecraft-install.sh  # Instalación automática y optimizada de Minecraft
├── icons/                       # Paquetes de iconos personalizados para el sistema
│   ├── Orbian-Ultradark.zip      # Tema de iconos Orbian Ultradark (ZIP)
│   └── Vivid-Dark-Icons.tar.gz   # Tema de iconos Vivid Dark (TAR.GZ)
├── multimedia/                  # Instalación de programas multimedia y streaming
│   ├── README.md                 # Información general sobre multimedia
│   ├── davinci_resolve_deps.sh  # Instalación de dependencias para DaVinci Resolve
│   ├── multimedia_install.sh     # Instalación de herramientas multimedia generales
│   ├── streaming_install.sh      # Instalación y configuración de OBS y sus plugins
│   └── solucion abrir davinci resolve/  # Fixes específicos para problemas al abrir DaVinci Resolve
│       └── d.sh                 # Script de solución directa para errores de arranque
├── seguridad/                   # Scripts orientados a privacidad, seguridad y red
│   ├── README.md                         # Información general sobre herramientas de seguridad
│   ├── cambio_mac.sh                    # Cambio de dirección MAC (aleatoria o manual)
│   ├── firewall_fail2ban.sh             # Configuración básica de firewall y fail2ban
│   ├── install_log.txt                  # Registro de instalación o ejecución de herramientas
│   └── setup_privacy_security_tools.sh  # Instalación de utilidades centradas en privacidad y seguridad
├── solucion_problema_wifi/      # Scripts y documentación para solucionar problemas de Wi-Fi
│   ├── README.md                 # Descripción de los problemas conocidos y soluciones aplicadas
│   └── wifi_watchdog.sh          # Script que reinicia automáticamente el Wi-Fi al detectar desconexión
├── utilidades/                  # Herramientas y scripts auxiliares generales
│   └── install_yay.sh            # Instalador automático y limpio de yay (AUR helper)
├── virtualizacion/              # Scripts para configurar y optimizar entornos de virtualización
│   ├── README.md                 # Información general sobre configuración de virtualización
│   └── install-virt-manager.sh   # Instalación y setup de virt-manager y dependencias
├── LICENSE                       # Licencia del proyecto (GPLv3)
├── README.md                     # Descripción general del repositorio
├── aparte_por_si_no_tengo_x11.txt  # Notas o procedimientos alternativos si no hay entorno gráfico
├── dato_para_juego.txt          # Información o dato técnico relacionado con juegos
└── subirgithub.sh               # Script para subir automáticamente el proyecto a GitHub


````

---

## 🚀 Instalación rápida

```bash
git clone https://github.com/Ylogther/bash-arch.git
cd bash-arch
chmod +x */*.sh
```

Luego puedes ejecutar los scripts de instalación en orden o de forma individual según tus necesidades.

---

## 🧑‍💻 Requisitos

* Distribución GNU/Linux (preferentemente Arch Linux o derivadas).
* Conexión a Internet.
* Conocimientos básicos de shell/bash.

---

## 📖 Licencia

Este proyecto está licenciado bajo la **GNU GPL v3**. Puedes ver los términos completos en el archivo [`LICENSE`](LICENSE).

```
Este software es libre: puedes redistribuirlo y/o modificarlo bajo los términos de la Licencia Pública General de GNU, publicada por la Free Software Foundation, ya sea la versión 3 de la Licencia, o (a tu elección) cualquier versión posterior.
```

---

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Puedes:

* Proponer mejoras
* Reportar bugs
* Enviar tus propios scripts compatibles vía pull request

---

## 🎥 Proyecto mantenido por

**Ylogther**
🧠 Hacker ético | 🛠️ Dev multimedia y web


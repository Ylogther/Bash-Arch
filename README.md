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
├── actualizacion/
│   └── full_update.sh
├── desarrollo/
│   ├── instalar_blackarch.sh
│   ├── install_devtools.sh
│   ├── ml4w_install.sh
│   └── setup_dev_env.sh
├── gaming/
│   ├── drivers_install.sh
│   ├── instalacion-gaming.sh
│   └── mas/
│       └── Minecraft-install.sh
├── icons/
│   ├── Orbian-Ultradark.zip
│   └── Vivid-Dark-Icons.tar.gz
├── multimedia/
│   ├── davinci_resolve_deps.sh
│   ├── multimedia_install.sh
│   ├── streaming_install.sh
│   └── solucion abrir davinci resolve/
│       └── d.sh
├── seguridad/
│   ├── cambio_mac.sh
│   ├── firewall_fail2ban.sh
│   └── setup_privacy_security_tools.sh
├── solucion_problema_wifi/
│   └── wifi_watchdog.sh
├── utilidades/
│   └── install_yay.sh
├── virtualizacion/
│   └── install-virt-manager.sh
├── subirgithub.sh
├── install.sh                 # Script maestro opcional
├── env_check.sh              # Verificación de entorno (requisitos)
└── LICENSE
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
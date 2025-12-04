# Proyecto Final Linux - TechSolutions
**Estudiante:** Andy Navarrete
**Asignatura:** Programación y Administración Linux
**Fecha:** 5-12-2025

## Este repositorio contiene la solución automatizada para el despliegue de infraestructura segura solicitada por TechSolutions. 
### El proyecto implementa un servidor web contenerizado, hardening de seguridad y scripts de mantenimiento.

---

## 1. Guía de Despliegue

Aqui dejare un paso a paso que que resulte todo en un sistema basado en Debian/Ubuntu.

### Paso 1: Clonar el repositorio
```bash
git clone [https://github.com/AndyNavarrete538/Examen-linux.git](https://github.com/AndyNavarrete538/Examen-linux.git)
cd Examen-linux/PROYECTO_FINAL_LINUX



Paso 2: Aprovisionamiento (Instalación)
Este script actualiza el sistema e instala Docker y Docker Compose.

cd deploy
chmod +x setup.sh
./setup.sh



Paso 3: Hardening (Seguridad)
IMPORTANTE: Ejecutar este script para configurar el Firewall (UFW) y asegurar SSH.
cd ../security

chmod +x hardening.sh
./hardening.sh



Paso 4: Despliegue del Servicio Web
Levantar el contenedor Nginx con la página web corporativa.

cd ../deploy
sudo docker-compose up -d



Paso 5: Mantenimiento (Backup)
Para realizar una copia de seguridad del sitio web:

cd ../maintenance
chmod +x backup.sh
./backup.sh

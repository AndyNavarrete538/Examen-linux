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
```Bash
git clone [https://github.com/AndyNavarrete538/Examen-linux.git](https://github.com/AndyNavarrete538/Examen-linux.git)
cd Examen-linux/PROYECTO_FINAL_LINUX
```


### Paso 2: Aprovisionamiento (Instalación)
Este script actualiza el sistema e instala Docker y Docker Compose.
```Bash
cd deploy
chmod +x setup.sh
./setup.sh
```


### Paso 3: Hardening (Seguridad)
IMPORTANTE: Ejecutar este script para configurar el Firewall (UFW) y asegurar SSH.
```Bash
cd ../security
chmod +x hardening.sh
./hardening.sh
```


### Paso 4: Despliegue del Servicio Web
Levantar el contenedor Nginx con la página web corporativa.
```Bash
cd ../deploy
sudo docker-compose up -d
```


### Paso 5: Mantenimiento (Backup)
Para realizar una copia de seguridad del sitio web:
```Bash
cd ../maintenance
chmod +x backup.sh
./backup.sh
```

## Justificación de Seguridad

Para proteger la infraestructura desplegada y cumplir con los estándares de seguridad de la Unidad VI, se aplicaron estrategias de defensa en profundidad centradas en dos puntos críticos que siempre son fundamentales en cada inicio:

**Protección del acceso remoto (SSH):**
Se deshabilitó el inicio de sesión directo con el usuario `root`. Esta medida es vital porque "root" es un nombre de usuario estándar conocido por cualquier atacante y es muy facil de localizar , lo que lo convierte en el blanco principal de ataques de fuerza bruta que todos encuentran . Al obligar a conectar con un usuario nominal y escalar privilegios mediante `sudo`, no solo dificultamos el acceso no autorizado, sino que garantizamos la **auditoría** del sistema, sabiendo exactamente qué persona ejecutó cada comando administrativo el cual se le hace mas complicado el ataque.

**Reducción de Superficie de Ataque (Firewall):**
Mediante UFW, se configuró una política restrictiva de "Denegar todo por defecto". Esto significa que el servidor ignora cualquier conexión que no haya sido explícitamente autorizada. Al dejar abiertos únicamente los puertos 80 (servicio web) y 22 (administración), aislamos el servidor de internet, evitando que posibles vulnerabilidades en otros servicios o puertos no utilizados puedan ser explotadas por terceros sin nuestro previo aviso que nos demos cuenta.

# Registro de Evidencia
A continuación se presenta la evidencia visual o pantallazos del correcto funcionamiento de los módulos.

## Estado del Firewall (UFW)
Se verifica que solo los puertos 22 y 80 están permitidos.

<img width="400" height="631" alt="ufw_status" src="https://github.com/user-attachments/assets/5098cb3b-675b-460d-ae16-d225339e9d65" />

## Acceso Web
Visualización del sitio web desplegado con la identificación del ingeniero. 

<img width="400" height="830" alt="web_access" src="https://github.com/user-attachments/assets/76eb93b4-6096-44da-80f6-1a3fb862ee51" />

## Acceso Web desde la terminal (linux)

<img width="500" height="620" alt="Acceso_Web_Codigo" src="https://github.com/user-attachments/assets/e4baf852-7777-432d-8249-4c773cca34b5" />

## Configuración SSH
Evidencia de la configuración de seguridad en sshd_config.
<img width="600" height="139" alt="ssh_config" src="https://github.com/user-attachments/assets/e97b593b-db4d-4057-af07-b9e660f21091" />

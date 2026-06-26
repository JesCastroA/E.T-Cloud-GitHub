#!/bin/bash

# 1. Actualizar todos los paquetes del sistema operativo
yum update -y

# 2. Instalar el servidor web (Apache)
yum install -y httpd

# 3. Encender el servidor web y habilitarlo para que arranque siempre al inicio
systemctl start httpd
systemctl enable httpd

# 4. Crear una página de aterrizaje básica para confirmar que el servidor levantó bien
echo "<h1>Bienvenido a BuyMax - Servidor escalado y configurado automáticamente</h1>" > /var/www/html/index.html
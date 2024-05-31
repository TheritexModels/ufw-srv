#!/bin/bash
# Creado por Andres Ruslan Abadias Otal

# Declaracion de variables
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
# Ruta programa
ufwsrv="/usr/local/sbin"

# Instalar servicio
sudo apt install ufw


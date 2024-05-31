#!/bin/bash

if [[ $1 == "1" ]]; then
    # Habilitar ufw
    ufw enable
elif [[ $1 == "0"]]; then
    ufw disable
elif [[ $1 == "-r" ]]; then
    # Reestablecer servicio
    ufw reset


elif [[ $1 == "-l" ]]; then
    #Mostrar lista de normas registradas
    ufw status numbered
elif [[ $1 == "-d" ]]; then
    # Se ingresara un segundo parametro
    ufw delete "$2"
    if [[ $2 == "" ]]; then
        echo "[#] No se ha ingresado un valor a eliminar"
        echo "[#] Parametro ingresado: $2."
    fi
elif [[ $1 == "-a" ]]; then
    # Permitir "allow" con el siguiente parametro
    ufw allow "$2"
    elif [[ $3 == "-t" ]]; then
        # Permitir acceso por tcp
        ufw allow "$2/tcp"
    fi
else
    echo "[#] Unkown"
fi
#!/bin/bash

writefile=$1
writestr=$2

if [ $# -lt 2 ]
then
    echo "Error: Arguments missing."
    exit 1
fi

writedir=$(dirname "$writefile")
mkdir -p "$writedir"

# 3) Crear el archivo y escribir el contenido (Sobrescribe si ya existe)
echo "$writestr" > "$writefile"

# 4) Verificar si el archivo se creó correctamente
# $? revisa si el comando anterior (echo) funcionó bien (0 es éxito)
if [ $? -ne 0 ]
then
    echo "Error: Could not create file $writefile"
    exit 1
fi


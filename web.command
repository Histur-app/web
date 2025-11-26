#!/bin/bash

# Ruta completa de la carpeta donde está este script (tu proyecto)
cd "$(dirname "$0")"

# Arranca el servidor Python en segundo plano
python3 -m http.server 8000 &

# Guarda el PID del servidor para poder matarlo al cerrar la terminal (opcional)
SERVER_PID=$!

# Espera un momento a que el servidor esté listo
sleep 1

# Abre el navegador (funciona en macOS con Safari, Chrome, Firefox, Edge, etc.)
open http://localhost:8000

# Opcional: muestra un mensaje bonito en la ventana que se abre
echo "────────────────────────────────────"
echo "Servidor local corriendo en http://localhost:8000"
echo "Cierra esta ventana para detener el servidor"
echo "────────────────────────────────────"

# Mantiene la ventana abierta hasta que pulses Ctrl+C o la cierres
wait $SERVER_PID
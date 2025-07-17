#!/bin/bash

# Geomapper Amenitiz - Quick Start Script
# ======================================

echo "🌍 Geomapper Amenitiz - Iniciando servidor..."
echo "=============================================="

# Verificar que estamos en el directorio correcto
if [ ! -f "mapa_clientes.html" ]; then
    echo "❌ Error: No se encontró mapa_clientes.html"
    echo "   Asegúrate de estar en el directorio Geomapper_amenitiz"
    exit 1
fi

if [ ! -f "coordinates-adjustment-sp.csv" ]; then
    echo "❌ Error: No se encontró coordinates-adjustment-sp.csv"
    echo "   Verifica que el archivo de datos esté presente"
    exit 1
fi

echo "✅ Archivos verificados correctamente"
echo ""

# Intentar iniciar servidor con Python 3
if command -v python3 &> /dev/null; then
    echo "🚀 Iniciando servidor con Python 3..."
    echo "📱 Abre tu navegador en: http://localhost:8000/mapa_clientes.html"
    echo ""
    echo "💡 Para detener el servidor, presiona Ctrl+C"
    echo "=============================================="
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    echo "🚀 Iniciando servidor con Python..."
    echo "📱 Abre tu navegador en: http://localhost:8000/mapa_clientes.html"
    echo ""
    echo "💡 Para detener el servidor, presiona Ctrl+C"
    echo "=============================================="
    python -m http.server 8000
else
    echo "❌ Error: No se encontró Python instalado"
    echo "   Instala Python 3 o usa otro servidor HTTP"
    echo ""
    echo "💡 Alternativas:"
    echo "   - npx http-server -p 8000 (Node.js)"
    echo "   - php -S localhost:8000 (PHP)"
    exit 1
fi 
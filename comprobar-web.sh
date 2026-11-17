#!/bin/bash
# Comprueba si una web responde y con qué código HTTP
url="$1"
codigo=$(curl -sL -o /dev/null -w "%{http_code}" "$url")
echo "Web: $url"
echo "Código HTTP: $codigo"
echo "blablalba"
echo "Tiempo: $(curl -sL -o /dev/null -w "%{time_total}" "$url") s"
echo "IP: $(curl -sL -o /dev/null -w "%{remote_ip}" "$url")"

#!/bin/bash

echo "🚀 Installation des dépendances pour M'AI..."

# Mettre à jour les paquets
sudo apt update && sudo apt upgrade -y

# Installer Python et FastAPI
sudo apt install -y python3 python3-pip python3-venv
pip install fastapi uvicorn httpx pyjwt python-dotenv sqlite3

# Installer les langages nécessaires
sudo apt install -y openjdk-17-jdk lua5.3 nodejs npm php-cli mono-complete sqlite3 gcc g++ make

# Installer Cloudflare Tunnel
echo "🌐 Installation de Cloudflare Tunnel..."
curl -fsSL https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -o cloudflared
chmod +x cloudflared
sudo mv cloudflared /usr/local/bin/

# Installer Ngrok
echo "🌐 Installation de Ngrok..."
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
chmod +x ngrok
sudo mv ngrok /usr/local/bin/

# Installer React pour l'interface
echo "🖥️ Installation de React..."
npm install -g create-react-app
npx create-react-app mai-app
cd mai-app
npm install axios react-router-dom tailwindcss

# Installer Nuitka pour compilation Python en exécutable natif
pip install nuitka

echo "✅ Installation terminée ! 🚀"
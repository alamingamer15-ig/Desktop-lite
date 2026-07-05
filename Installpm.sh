#!/bin/sh
set -e

echo "📦 Flatpak setup starting..."

# 1. Install Flatpak if missing
if ! command -v flatpak >/dev/null 2>&1; then
    echo "📥 Installing Flatpak..."
    sudo apt update
    sudo apt install -y flatpak
else
    echo "✅ Flatpak already installed"
fi

# 2. Enable Flathub
echo "🌐 Enabling Flathub..."
flatpak remote-add --if-not-exists flathub \
https://flathub.org/repo/flathub.flatpakrepo

# 3. Update Flatpak
echo "🔄 Updating Flatpak..."
flatpak update -y

# 4. Install apps
echo "📦 Installing apps..."

# Steam
flatpak install -y flathub com.valvesoftware.Steam

# Vinegar
flatpak install -y flathub org.vinegarhq.Vinegar

echo "🚀 Done!"
echo "Flatpak environment ready."

echo "Downloasing test rbxl"
curl AeternusRevamp.rbxl "https://github.com/alamingamer15-ig/Lune-Test/releases/download/main/aeternusRevamp1.3.rbxl"

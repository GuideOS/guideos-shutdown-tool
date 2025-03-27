#!/bin/bash

# Sicherstellen, dass die Verzeichnisse existieren
mkdir -p debian/guideos-shutdown-tool/usr/share/applications
#mkdir -p debian/guideos-ticket-tool/etc/xdg/autostart

# Erstellen der ersten .desktop-Datei
cat > debian/guideos-shutdown-tool/usr/share/applications/guideos-shutdown-tool.desktop <<EOL
[Desktop Entry]
Version=1.0
Name=GuideOS Shutdown Tool
Comment=Zeitschaltuhr für den Shutdown
Exec=guideos-shutdown-tool
Icon=guideos-shutdown-tool
Terminal=false
Type=Application
Categories=GuideOS;
StartupNotify=true
EOL
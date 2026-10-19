#!/bin/sh -e

# DroidDeck runs Steam as root inside its Linux session on Android, so unlike the other installers this
# one runs as root.

echo "-- XLM DroidDeck Auto-Installer --"
echo

echo "[Step: 1] Downloading XLM"
curl --fail -L https://github.com/Blooym/xlm/releases/latest/download/xlm-aarch64-unknown-linux-gnu > /tmp/xlm

echo "[Step: 2] Configuring XLM as a Steam Tool"
chmod +x /tmp/xlm
/tmp/xlm install-steam-tool --xlm-updater-disable --extra-launch-args="--run-as-steam-compat-tool=true --use-fallback-secret-provider" --steam-compat-path ~/.local/share/Steam/compatibilitytools.d/

echo "[Step: 3] Cleanup XLM binary"
rm /tmp/xlm

echo
echo "-- Auto Installer Complete: Go back to gaming mode and follow the guide at https://github.com/Blooym/xlm#readme to continue! --"

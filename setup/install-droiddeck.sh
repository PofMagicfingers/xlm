#!/bin/sh -e

# The DroidDeck builds of XLM and XIVLauncher.Core are published in PofMagicfingers/XIVLauncher.Core's
# releases, whose install script sets XLM up as a Steam compatibility tool. DroidDeck runs Steam as
# root inside its Linux session on Android, so unlike the other installers this one runs as root.

curl -fsSL https://github.com/PofMagicfingers/XIVLauncher.Core/releases/latest/download/install.sh | bash

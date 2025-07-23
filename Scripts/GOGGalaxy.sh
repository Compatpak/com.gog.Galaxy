#!/bin/sh
echo "Running Wineboot"
wineboot

# echo "Updating registry"
# wine regedit /app/share/WineGraphics.reg
# sleep 3

# echo "Installing dotnet48 with winetricks"
# winetricks dotnet48

# echo "Installing d3dcompiler_43 with winetricks"
# winetricks d3dcompiler_43

# winetricks d3dcompiler_47

# winetricks d3dx9

# winetricks dotnetcore3

# winetricks vcrun2019

# winetricks vcrun6sp6

# winetricks vcrun6

# winetricks dxvk

# winetricks arial

# echo "Installing corefonts with winetricks"
# winetricks corefonts

echo "Setting Windows version to 10"
winecfg -v win10

echo "Setting up Discord rich presence"
for i in {0..9}; do
    test -S $XDG_RUNTIME_DIR/discord-ipc-$i ||
    ln -sf {app/com.discordapp.Discord,$XDG_RUNTIME_DIR}/discord-ipc-$i;
done

echo "Checking if GOG Galaxy is already installed"
if [ -d "/var/data/wine/drive_c/Program Files (x86)/GOG Galaxy/" ]; then
  echo "GOG Galaxy is installed"

  echo "Changing directory to /var/data/wine/drive_c/Program Files (x86)/GOG Galaxy/"
  cd "/var/data/wine/drive_c/Program Files (x86)/GOG Galaxy/"

  echo "Launching GOG Galaxy"
  wine "/var/data/wine/drive_c/Program Files (x86)/GOG Galaxy/GalaxyClient.exe"
else
  echo "GOG Galaxy is not installed"

  echo "Launching GOG Galaxy Installer"
  wine /app/bin/GOGGalaxyInstaller.exe
fi

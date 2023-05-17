#!/bin/bash
# Adapted with thanks from https://github.com/mmmaxwwwell/space-engineers-dedicated-docker-linux/blob/main/install-winetricks

SCRIPT_NAME=$(echo \"$0\" | xargs readlink -f)
SCRIPTDIR=$(dirname "$SCRIPT_NAME")
cd ./space-engineers-generic
env WINEPREFIX=$SCRIPTDIR/space-engineers-generic/.wine WINEARCH=win64 WINEDEBUG=-all ./winetricks corefonts 
env WINEPREFIX=$SCRIPTDIR/space-engineers-generic/.wine WINEARCH=win64 WINEDEBUG=-all ./winetricks -q vcrun2017 
env WINEPREFIX=$SCRIPTDIR/space-engineers-generic/.wine WINEARCH=win64 WINEDEBUG=-all ./winetricks -q --force dotnet48 
env WINEPREFIX=$SCRIPTDIR/space-engineers-generic/.wine WINEARCH=win64 WINEDEBUG=-all ./winetricks -q vcrun2013 
rm -rf ~/.cache/winetricks ~/.cache/fontconfig

exit 0
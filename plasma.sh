plasma_repo="/home/liukdv/Documents/mine/configs/plasma"

cp --backup=numbered --remove-destination \
  "$plasma_repo"/{kdeglobals,kglobalshortcutsrc,kwinrc} \
  "$plasma_repo"/{plasma-org.kde.plasma.desktop-appletsrc,plasmashellrc,plasmarc} \
  "$plasma_repo"/{krunnerrc,plasmanotifyrc,kscreenlockerrc} \
  "$HOME/.config/"

# Non sostituire le regole del PC destinatario con un file vuoto.
if [ -s "$plasma_repo/kwinrulesrc" ]; then
  cp --backup=numbered --remove-destination \
    "$plasma_repo/kwinrulesrc" "$HOME/.config/"
fi

for entry in "$plasma_repo"/autostart/*.desktop; do
  [ -f "$entry" ] || continue
  mkdir -p "$HOME/.config/autostart"
  cp --backup=numbered --remove-destination \
    "$entry" "$HOME/.config/autostart/"
done
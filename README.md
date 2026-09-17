plasma settings

I file di configurazione in questa cartella sono link simbolici verso quelli
usati da KDE in `~/.config/`: le modifiche fatte da Plasma sono visibili qui.
`kwin` punta a `~/.local/share/kwin`; `autostart` a `~/.config/autostart/`.
`kwinrulesrc` punta a `~/.config/kwinrulesrc`, inizialmente vuoto.
`shortcuts.kksrc` rimane un file da esportare manualmente.


Per importare su un altro PC, metti i file reali scaricati in `~/plasma-export`.
Esci dalla sessione Plasma, passa alla console con Ctrl+Alt+F3 ed esegui:

```bash
plasma_repo="$HOME/plasma-export"

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
```

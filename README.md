plasma settings

I file di configurazione in questa cartella sono link simbolici verso quelli
usati da KDE in `~/.config/`: le modifiche fatte da Plasma sono visibili qui.
`kwin` punta a `~/.local/share/kwin`; `autostart` a `~/.config/autostart/`.
`kwinrulesrc` punta a `~/.config/kwinrulesrc`, inizialmente vuoto.
`shortcuts.kksrc` rimane un file da esportare manualmente.

Per importare su un altro PC, metti i file reali scaricati in`/home/liukdv/Documents/mine/configs/plasma`.
Esci dalla sessione Plasma, passa alla console con Ctrl+Alt+F3 ed esegui ``bash plasma.sh``

#!/bin/bash

# blesh Konfiguration
# Diese Datei wird von blesh beim Start geladen

# Enter-Taste führt im Multiline-Modus direkt aus (accept-line)
# anstatt eine neue Zeile zu erstellen (newline)
# Dies macht die Eingabe effizienter bei mehrzeiligen Befehlen
ble-bind -m 'emacs' -f 'C-m' 'accept-line'
ble-bind -m 'vi_imap' -f 'C-m' 'accept-line'

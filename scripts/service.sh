[Unit]

Description=Flyve Mobile Device Management for GLPI
Wants=network.target
#############################################################################
# Verifie la présence du fichier mqtt.php
# Remplace la fonction sanity_checks
# Attention n'est pas fléxible chemin en dur ( voir comment améliorer )
ConditionPathExists=/var/www/html/glpi-test/plugins/flyvemdm/scripts/mqtt.php
#############################################################################

[Service]
Type=simple
User=apache
Group=apache
ExecStart=/var/www/html/glpi-test/plugins/flyvemdm/scripts/loop-run.sh
Restart=on-failure
SyslogIdentifier=flyvemdm

[Install]
WantedBy=multi-user.target

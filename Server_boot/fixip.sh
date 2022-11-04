#!/bin/bash
# Functie: Automatich het ip adres fixen zodat ik er aan kan via vs code wanneer de server gestart is :-)
# Extra: Dit staat ingesteld via de cronjob: "sudo crontab -eu root"
dhclient -r
dhclient
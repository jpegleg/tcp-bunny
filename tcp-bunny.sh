#!/bin/bash
# TCP BUNNY
# A wrapper for tcpdump that uses easy key words
# instead of the built in tcpdump options.
case "$1" in
lighteth0)
    tcpdump -i eth0
;;
lightwlan0)
    tcpdump -i wlan0
;;
lightasciieth0)
    tcpdump -A -i eth0
;;
lightasciiwlan0)
    tcpdump -A -i wlan0
;;
medeth0)
    tcpdump -XX -tttt -i eth0
;;
medwlan0)
    tcpdump -XX -tttt -i wlan0
;;
heavyeth0)
    tcpdump -XX -tttt -vvv -i eth0
;;
heavywlan0)
    tcpdump -XX -tttt -vvv -i wlan0
;;
*)
echo "Usage: sudo ./tcp-bunny.sh option";
echo "Options include: lighteth0, lightwlan0, lightasciieth0, lightasciiwlan0, medeth0, medwlan0, heavyeth0, heavywlan0."

exit 1;
esac

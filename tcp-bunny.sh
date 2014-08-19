#!/bin/bash
# TCP BUNNY
# A wrapper for tcpdump that uses easy key words
# instead of the built in tcpdump options.
case "$1" in
basic)
    tcpdump -nS
;;
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
heavyfull)
    tcpdump -nnvvXSs 9999
;;
icmppingpong)
    tcpdump -nvvXSs 0 -c2 icmp
;;
urgentpackets)
    tcpdump 'tcp[13] & 32!=0'
;;
ackpackets)
    tcpdump 'tcp[13] & 16!=0'
;;
pushpackets)
    tcpdump 'tcp[13] & 8!=0'
;;
resetpackets)
    tcpdump 'tcp[13] & 4!=0'
;;
synpackets)
    tcpdump 'tcp[13] & 2!=0'
;;
finpackets)
    tcpdump 'tcp[13] & 1!=0'
;;
synackpackets)
    tcpdump 'tcp[13]=18'
;;
*)
echo "Usage: sudo ./tcp-bunny.sh option";
echo "Options include: lighteth0, lightwlan0, lightasciieth0, lightasciiwlan0, medeth0, medwlan0, heavyeth0, heavywlan0, heavyfull, icmppingpong, urgentpackets, ackpackets, pushpackets, resetpackets, synpackets, finpackets, synackpackets."

exit 1;
esac

#!/usr/bin/env python
from scapy.all import *
INFILE = '/change/me/please.pcap'
OUTFILE = '/change/me/please.pcap'
paks = rdpcap(INFILE)
for pak in paks:
    pak[TCP].remove_payload()
wrpcap(OUTFILE, paks)

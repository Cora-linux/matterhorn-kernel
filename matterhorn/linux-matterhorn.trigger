#!/bin/sh
kver="$(basename "$(find /lib/modules -maxdepth 1 -name '*-matterhorn' | sort -V | tail -n1)")"
[ -n "$kver" ] && mkinitfs -c /etc/mkinitfs/mkinitfs.conf "$kver"
exit 0

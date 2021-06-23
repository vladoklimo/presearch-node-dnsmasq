#!/bin/sh

# bypass common resolv.conf configuration
cp /etc/resolv.conf /etc/resolv.dnsmasqd
# tell system to use localhost DNS queries from cache
echo "nameserver 127.0.0.1" > /etc/resolv.conf
# start dnsmasq and presearch node
dnsmasq && su -s /bin/sh presearch -c /app/presearch-node

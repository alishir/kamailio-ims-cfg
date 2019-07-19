# BIND configuration
- install bind9, apt-get install bind9
- copy kamailio.ims.sina.local.dnszone to /etc/bind/
- add following snippet to /etc/bind/named.conf.local

```
zone "kamailio.ims.sina.local" {
	type master;
	file "/etc/bind/kamailio.ims.sina.local.dnszone";
};
``` 

# Verification
dig -t srv _sip._tcp.scscf.kamailio.ims.sina.local

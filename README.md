Description
===========

	The switchmac replaces mac address without disabling the interface.

Requests
========
	OS: UNIX/LINUX

install
=======

	git clone https://github.com/CyberSecurityDef/switchmac.git
	cd /switchmac	
	make
	make install

Using
=====

	OPTIONS:
		-r	Random change mac address
		-g	Get mac address
		-m	Add mac address
		-h 	Using help	
	EXAMPLES:
		switchmac -r eth0
		switchmac -m 50:2a:14:af:b5:A4 eth0
	

#!/bin/bash

if [[ ! -e /usr/local/bin/Banwidth-Per-Client ]]; then
	apt-get install python
	wget -O /usr/local/bin/Banwidth-Per-Client "https://raw.githubusercontent.com/nwqionm/OPENEXTRA/master/Banwidth-Per-Client"
	chmod +x /usr/local/bin/Banwidth-Per-Client
	clear
	echo ""
	echo -e "Script by ${GRAY}Weerawat Khlaolamom (P'Beer) ${NC}"
	echo -e "FB Group : ${GRAY}https://www.facebook.com/groups/143457819538014/ ${NC}"
	echo ""
	Banwidth-Per-Client
	echo ""
else
	clear
	echo ""
	echo -e "Script by ${GRAY}Weerawat Khlaolamom (P'Beer) ${NC}"
	echo -e "FB Group : ${GRAY}https://www.facebook.com/groups/143457819538014/ ${NC}"
	echo ""
	Banwidth-Per-Client
	echo ""
fi

	;;
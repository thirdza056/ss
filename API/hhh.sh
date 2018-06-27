#!/bin/bash

clear
echo ""
echo "  (\_(\ "
echo " (=’ :’) :* Script by Mnm Ami"
echo "  (,(”)(”) °.¸¸.•"
echo ""
echo -e "แก้ไขคอนฟิกต่างๆในระบบ ${GRAY}✿.｡.:* *.:｡✿*ﾟ’ﾟ･✿.｡.:*${NC}"
echo ""
echo -e "|${GRAY}1${NC}| OPENVPN ไฟล์ต้นแบบการสร้างคอนฟิก"
#echo -e "|${GRAY}2${NC}| OPENVPN ไฟล์ข้อมูลเซิฟเวอร์"
#echo -e "|${GRAY}3${NC}| SQUID PROXY ไฟล์รายละเอียดของพร็อกซี่"
#echo -e "|${GRAY}4${NC}| MENU ไฟล์สคริปท์ของเมนู"
echo ""
echo ""
read -p "เลือกหัวข้อที่ต้องการใช้งาน : " EDIT

case $EDIT in

	1)
nano /etc/openvpn/client.ovpn
exit
	;;

esac
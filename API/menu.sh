#!/bin/bash
#Menu
echo ""
echo "  (\_(\ "
echo " (=’ :’) :* Script by Mnm Ami"
echo "  (,(”)(”) °.¸¸.•"
echo ""
if [[ -e /usr/local/bin/Check-Thai ]]; then
echo -e "* menu      : แสดงรายการคำสั่ง"
echo -e "* usernew   : สร้างบัญชี SSH และ OpenVPN"
echo -e "* trial     : สร้างบัญชีทดลองใช้"
echo -e "* hapus     : ลบบัญชี SSH & OpenVPN"
echo -e "* cek       : ตรวจสอบการเข้าสู่ระบบของผู้ใช้"
echo -e "* member    : รายชื่อสมาชิก SSH & OpenVPN"
echo -e "* resvis    : restart service dropbear, webmin"
echo -e "              squid3, OpenVPN dan SSH"
echo -e "* reboot    : reboot VPS"
echo -e "* speedtest : speedtest VPS"
echo -e "* info      : แสดงข้อมูลระบบ"
echo -e "* about     : ติดตั้งข้อมูลสคริปต์อัตโนมัติ"
echo -e "* exit      : keluar dari Putty/Connecbot/"
echo -e "              JuiceSSH"
echo -e ""
if [[ -e /usr/local/bin/Check-Thai ]]; then
	echo -e "แบนด์วิดท์ที่ใช้ไปทั้งหมด ${GRAY}$TOTALBW${NC}${GRAY}B${NC}  |  กำลังเชื่อมต่อ ${GRAY}$ON${NC} บัญชี"
elif [[ ! -e /usr/local/bin/Check-Thai ]]; then
	echo -e "TOTAL BANDWIDTH ${GRAY}$TOTALBW${NC}${GRAY}B${NC}  |  CLIENT ONLINE NOW ${GRAY}$ON${NC} CLIENT"
fi
echo ""
bash Auto-Delete-Client
echo ""
if [[ -e /usr/local/bin/Check-Thai ]]; then
	read -p "เลือกหัวข้อเมนูที่ต้องการใช้งาน : " MENU
elif [[ ! -e /usr/local/bin/Check-Thai ]]; then
	read -p "Select a Menu Script : " MENU
fi
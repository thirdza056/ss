#!/bin/bash
#Menu
echo ""
echo "  (\_(\ "
echo " (=’ :’) :* Script by Mnm Ami"
echo "  (,(”)(”) °.¸¸.•"
echo ""
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
if [[ -e /etc/vnstat.conf ]]; then
	line=`cat /etc/openvpn/openvpn-status.log | wc -l`
	a=$((3+((line-8)/2)))
	b=$(((line-8)/2))
	cat /etc/openvpn/openvpn-status.log | head -n $a | tail -n $b | cut -d "," -f 1 | sed -e 's/,/   /g' > /usr/local/bin/Client-Login
	TOTAL=$(vnstat -i eth0 --nick local | grep "total:" | awk '{print $8" "substr ($9, 1, 1)}')
	TOTALONLINE=$(awk '{ total = total + NF }; END {print total}' /usr/local/bin/Client-Login)
	if [[ -e /usr/local/bin/Check-Thai ]]; then
		echo -e "แบนด์วิดท์ที่ใช้ไปทั้งหมด ${RED}$TOTAL${NC}${RED}B${NC}  |  ขณะนี้มีบัญชีที่กำลังเชื่อมต่อ ${RED}$TOTALONLINE${NC} บัญชี"
	elif [[ ! -e /usr/local/bin/Check-Thai ]]; then
		echo -e "TOTAL BANDWIDTH ${RED}$TOTAL${NC}${RED}B${NC}  |  CLIENT ONLINE NOW ${RED}$TOTALONLINE${NC} CLIENT"
	fi

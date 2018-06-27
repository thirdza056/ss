#!/bin/bash

if [ ! -e /usr/local/bin/Reboot-Server ]; then
	echo '#!/bin/bash' > /usr/local/bin/Reboot-Server
	echo '' >> /usr/local/bin/Reboot-Server
	echo 'DATE=$(date +"%m-%d-%Y")' >> /usr/local/bin/Reboot-Server
	echo 'TIME=$(date +"%T")' >> /usr/local/bin/Reboot-Server
	echo 'echo "รีบูทเมื่อวันที่ $DATE เวลา $TIME" >> /usr/local/bin/Reboot-Log' >> /usr/local/bin/Reboot-Server
	echo '/sbin/shutdown -r now' >> /usr/local/bin/Reboot-Server
	chmod +x /usr/local/bin/Reboot-Server
fi

clear
echo ""
echo "  (\_(\ "
echo " (=’ :’) :* Script by Mnm Ami"
echo "  (,(”)(”) °.¸¸.•"
echo ""
echo -e "${GRAY}ตั้งค่าเวลารีบูทเซิฟเวอร์อัตโนมัติ ${NC} "
echo ""
echo -e "|${GRAY}1${NC}| รีบูททุกๆ  1 ชั่วโมง"
echo -e "|${GRAY}2${NC}| รีบูททุกๆ  6 ชั่วโมง"
echo -e "|${GRAY}3${NC}| รีบูททุกๆ 12 ชั่วโมง"
echo -e "|${GRAY}4${NC}| รีบูททุกๆ  1 วัน"
echo -e "|${GRAY}5${NC}| รีบูททุกๆ  7 วัน"
echo -e "|${GRAY}6${NC}| รีบูททุกๆ 30 วัน"
echo -e "|${GRAY}7${NC}| หยุดการรีบูทเซิฟเวอร์"
echo -e "|${GRAY}8${NC}| ตรวจสอบดูบันทึกการรีบูทเซิฟเวอร์"
echo -e "|${GRAY}9${NC}| ลบบันทึกการรีบูทเซิฟเวอร์"
echo ""
read -p "เลือกหัวข้อที่ต้องการใช้งาน : " REBOOT

case $REBOOT in

	1)

echo "0 * * * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo ""
echo "ตั้งค่ารีบูทเซิฟเวอร์ทุกๆ 1 ชั่วโมงเรียบร้อยแล้ว"
echo ""
exit

	;;

	2)

echo "0 */6 * * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo ""
echo "ตั้งค่ารีบูทเซิฟเวอร์ทุกๆ 6 ชั่วโมงเรียบร้อยแล้ว"
echo ""
exit

	;;

	3)

echo "0 */12 * * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo ""
echo "ตั้งค่ารีบูทเซิฟเวอร์ทุกๆ 12 ชั่วโมงเรียบร้อยแล้ว"
echo ""
exit

	;;

	4)

echo "0 0 * * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo ""
echo "ตั้งค่ารีบูทเซิฟเวอร์ทุกๆ 1 วันเรียบร้อยแล้ว"
echo ""
exit

	;;

	5)

echo "0 0 * * MON root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo ""
echo "ตั้งค่ารีบูทเซิฟเวอร์ทุกๆ 7 วันเรียบร้อยแล้ว"
echo ""
exit

	;;

	6)

echo "0 0 1 * * root /usr/local/bin/Reboot-Server" > /etc/cron.d/Reboot-Server
echo ""
echo "ตั้งค่ารีบูทเซิฟเวอร์ทุกๆ 30 วันเรียบร้อยแล้ว"
echo ""
exit

	;;

	7)

rm -rf /usr/local/bin/Reboot-Server
echo ""
echo "หยุดการรีบูทเซิฟเวอร์เรียบร้อยแล้ว"
echo ""
exit

	;;

	8)

if [[ ! -e /usr/local/bin/Reboot-Log ]]; then
	echo ""
	echo "ไม่มีบันทึกการรีบูทเซิฟเวอร์"
	echo ""
	exit
else
	echo ""
	cat /usr/local/bin/Reboot-Log
	echo ""
	exit
fi

	;;

	9)

rm -rf /usr/local/bin/Reboot-Log
echo ""
echo "ลบบันทึกการรีบูทเซิฟเวอร์เรียบร้อยแล้ว"
echo ""
exit

	;;

esac

	;;
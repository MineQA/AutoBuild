# AutoBuild Script Module by Hyy2001

function Network_Test() {
Update=2020.04.02
Module_Version=V1.0.0

clear
Say="Network Connectivity Test Script $Module_Version by Hyy2001" && Color_B
echo " "
Network_OK="\e[33m连接正常\e[0m"
Network_ERROR="\e[31m连接错误\e[0m"
timeout 3 httping -c 1 www.baidu.com > /dev/null 2>&1
if [ $? -eq 0 ];then
	echo -e "百度		$Network_OK" 
else
	echo -e "百度		$Network_ERROR"
fi
timeout 3 httping -c 1 www.github.com > /dev/null 2>&1
if [ $? -eq 0 ];then
	echo -e "Github		$Network_OK" 
else
	echo -e "Github		$Network_ERROR"
fi
timeout 3 httping -c 1 www.google.com > /dev/null 2>&1
if [ $? -eq 0 ];then
	echo -e "Google		$Network_OK" 
else
	echo -e "Google		$Network_ERROR"
fi
echo ""
Enter	
}
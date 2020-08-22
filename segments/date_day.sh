# Prints the name of the current day.

run_segment() {
    day=`date +"%a"`
    if [ $day == "Mon" ];then
	echo "月曜日"
    elif [ $day == "Tue" ];then
	echo "火曜日"
    elif [ $day == "Wed" ];then
	echo "水曜日"
    elif [ $day == "Thu" ];then
	echo "木曜日"
    elif [ $day == "Fri" ];then
	echo "金曜日"
    elif [ $day == "Sat" ];then
	echo "土曜日"
    elif [ $day == "Sun" ];then
	echo "日曜日"
    fi
    return 0
}

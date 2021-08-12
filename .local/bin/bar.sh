#!/bin/sh

# PREFIX=' '
# FIRE=' '
# BLUETOOTH_ON_ICON=''
# BLUETOOTH_OFF_ICON=''

# get_bluetooth()
# {
#     status=$(systemctl is-active bluetooth.service)

#     if [ "$status" == "active" ]
#     then
#         echo "$BLUETOOTH_ON_ICON"
#     else
#         :
#         #echo "$BLUETOOTH_OFF_ICON"
#     fi
# }

# get_bluetooth

# WARNING_LEVEL=80

#get_cputemp()
# {

# 	CPU_TEMP="$(sensors | grep temp1 | awk 'NR==1{gsub("+", " "); gsub("\\..", " "); print $2}')"

# 	if [ "$CPU_TEMP" -ge $WARNING_LEVEL ]; then
# 		PREFIX="$FIRE$PREFIX"
# 	fi

# 	echo "$PREFIX$CPU_TEMP°C"
# }

# get_cputemp

# ram() {
# 	mem=$(free -h | awk '/Mem:/ { print $3 }' | cut -f1 -d 'i')
# 	echo  "$mem"
# }

# cpu() {
# 	read -r cpu a b c previdle rest < /proc/stat
# 	prevtotal=$((a+b+c+previdle))
# 	sleep 0.5
# 	read -r cpu a b c idle rest < /proc/stat
# 	total=$((a+b+c+idle))
# 	cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
# 	echo  "$cpu"%
# }

# network() {
# 	conntype=$(ip route | awk '/default/ { print substr($5,1,1) }')

# 	if [ -z "$conntype" ]; then
# 		echo " down"
# 	elif [ "$conntype" = "e" ]; then
# 		echo " up"
# 	elif [ "$conntype" = "w" ]; then
# 		echo " up"
# 	fi
# }

# volume_pa() {
# 	muted=$(pactl list sinks | awk '/Mute:/ { print $2 }')
# 	vol=$(pactl list sinks | grep Volume: | awk 'FNR == 1 { print $5 }' | cut -f1 -d '%')

# 	if [ "$muted" = "yes" ]; then
# 		echo " muted"
# 	else
# 		if [ "$vol" -ge 65 ]; then
# 			echo " $vol%"
# 		elif [ "$vol" -ge 40 ]; then
# 			echo " $vol%"
# 		elif [ "$vol" -ge 0 ]; then
# 			echo " $vol%"	
# 		fi
# 	fi

# }

# volume_alsa() {

# 	mono=$(amixer -M sget Master | grep Mono: | awk '{ print $2 }')

# 	if [ -z "$mono" ]; then
# 		muted=$(amixer -M sget Master | awk 'FNR == 6 { print $7 }' | sed 's/[][]//g')
# 		vol=$(amixer -M sget Master | awk 'FNR == 6 { print $5 }' | sed 's/[][]//g; s/%//g')
# 	else
# 		muted=$(amixer -M sget Master | awk 'FNR == 5 { print $6 }' | sed 's/[][]//g')
# 		vol=$(amixer -M sget Master | awk 'FNR == 5 { print $4 }' | sed 's/[][]//g; s/%//g')
# 	fi

# 	if [ "$muted" = "off" ]; then
# 		echo " muted"
# 	else
# 		if [ "$vol" -ge 65 ]; then
# 			echo " $vol%"
# 		elif [ "$vol" -ge 40 ]; then
# 			echo " $vol%"
# 		elif [ "$vol" -ge 0 ]; then
# 			echo " $vol%"	
# 		fi
# 	fi
# }

# clock() {
# 	dte=$(date +"%d/%m/%Y")
# 	time=$(date +"%H:%M")

# 	echo " $dte >  $time"
# }

main() {
	while true; do
		xsetroot -name "                                                                                      ア キ エ カ ノ  | Cute-Teen-Angel | Towa-Sama | Majitenshi13@gmail.com      "
		sleep 1
	done
}

main

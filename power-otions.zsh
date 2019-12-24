#this script is for testing dmenu and powerotions
# command power
#this script sould provide poweroff logout or reboot as a choosable option

power(){
	answer=("yes\nno")
	testdaten=("poweroff\nreboot\ni3lock")

	choice=$(echo -e "$testdaten" | dmenu)
       	
	decicion=$(echo -e $answer | dmenu)
	if [ $decicion = "yes" ]
	then
		$choice
	fi
}

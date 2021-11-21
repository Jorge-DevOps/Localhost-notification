# El Bosque University
# Operational Systems
# Section III. Final Project. 2021-2
# Development by M.J.J

# Variables:
## name - User name
## phone - Phone number
## menu - Menu to show the initial message
## menu2 - Menu to show the initial options to the user

menu="\nWelcome to LocalHost Notification\n\nPlease complete the information below to continue...\n"
menu2="Select one of the options:\n    1) Add IP Manually\n    2) Show list with IP\n    3) Remove IP from the list"

function validate_cellphone() {
	# * Validate if the Menu has 10 digits
	if [[ $phone =~ ^[0-9]{10}$ ]]; then
		true
		return
	else
		false
		return
	fi
}

# function show_ip_address() {
# 	echo "Show IP directions"
# 	# TODO: List for show ip address
# }

# function add_ip_to_list() {
# 	# TODO: Add ip to list
# }

# function remove_ip_array_manually() {
# 	# TODO: Remove ip from list
# }

# * Show initial menu
function showMenu() {
	echo -e $menu
	echo "1. Full Name"
	read name
	echo "2. Cellphone"
	read phone
	if validate_cellphone true; then
		echo "Cellphone is valid, continue..."
	else
		echo "Cellphone is invalid, run the command again"
		exit # Exit the script
	fi
	# * Show second menu
	echo -e $menu2
	read CASE

	case "$CASE" in
		"1") add_ip_to_list
		;;
		"2") show_ip_address
		;;
		"3") remove_ip_array_manually
		;;
	esac
}

## * Start application
# linux_logo -L 9 -a
# screenfetch
file_size=$(du -sh . | awk '{print $1}')
echo "________________________________________"
echo "| LocalHost Notification               |"
echo "|--------------------------------------|"
echo "| Weekly downloads: 5,000,000          |"
echo "|--------------------------------------|"
echo "| Version: 1.0.0  | License: MIT       |"
echo "|--------------------------------------|"
echo "| Total size: $file_size                      |"
echo "|--------------------------------------|"
echo "| Collaborators:                       |"
echo "|                                      |"
echo "| - Flavia Valentina Morena Pacheco    |"
echo "| - Jorge Andres Rangel Zapata         |"
echo "| - Jozek Andrzej Hajduk Sánchez       |"
echo "|--------------------------------------|"
echo "| Last Publish: 29/11/2021             |"
echo "|______________________________________|"
showMenu

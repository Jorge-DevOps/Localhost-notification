# Variables:
## name - User name
## phone - Phone number
## menu - Menu to show the initial message

menu="Welcome to LocalHost Notification\n\nPlease complete the information below to continue..."

# Show initial menu
function showMenu() {
    linux_logo -L 9 -a
    screenfetch
    echo "LocalHost Notification"
    echo "Version -> 1.0"
    echo "Operationals systems, Section III"
    echo "last release -> 29/11/2021"
	
    echo -e $menu
    echo "1. Full Name"
    read name
    echo "2. Cellphone"
    read phone
    echo "Show IP directions"
    show_ip_address
}

function validate_cellphone() {
    # Validate if the Menu has 10 digits
    if [[ $phone =~ ^[0-9]{10}$ ]]; then
        echo "Cellphone is valid"
    else
        echo "Cellphone is invalid"
        # TODO: Stop script
    fi
}

# function show_ip_address() {
# 	# TODO: List for show ip address
# }

## Start application

showMenu

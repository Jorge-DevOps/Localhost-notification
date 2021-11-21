PATH_IpMac=./reports/new_file_ip-mac.txt
PATH_MAC=./reports/new_file_mac.txt

PATH_MAC_SAVE=./reports/mac_valid.txt

macDefault=()

function scan(){
    
    sudo nmap -sn 192.168.1.0/24 | awk '/Nmap scan report for/{printf $5;}/MAC Address:/{print ";"$3;}' | sort > $PATH_IpMac
    awk -F";" '{print $2}' $PATH_IpMac | sort > $PATH_MAC
    readReport ${PATH_MAC}
  
}

function readReport(){
    
    file="${1}"
    
    unset mac
    mac=()
    
    while IFS= read -r line;
    do
        mac+=($line);
    done < $file

    # if [ $file = "./reports/mac_valid.txt" ]; then
    
    # $macDefault = $mac
    print ${mac[@]}
    
    # fi        

    # compareMac "${mac[@]}"
    # print "${mac[@]}"
}

function print(){
    
    local_array=("${@}")
    
    echo -e "Direcciones Mac actuales:\n"
    for str in ${local_array[@]}; do
        echo $str
    done
}

function compareMac(){
    
    local_array=("${@}")
    
    echo -e "Direcciones Mac actuales:\n"
    for str in ${local_array[@]}; do
        echo $str
    done

}

while
true
do
    scan
    sleep 30
done

# readReport ${PATH_MAC_SAVE}

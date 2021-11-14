mac=()

function scan(){
    rm ip-mac.txt
    touch ip-mac.txt
    sudo nmap -sn 192.168.1.0/24 | awk '/Nmap scan report for/{printf $5;}/MAC Address:/{print ";"$3;}' | sort > ip-mac.txt
    awk -F";" '{print $2}' ip-mac.txt | sort > mac.txt
}

function readReport(){
    
    while IFS= read -r line;
    do
        mac+=($line);
    done < mac.txt
    printMac
    
}

function printMac(){

    echo -e "Direcciones Mac actuales:\n"
    for str in ${mac[@]}; do
        echo $str
    done
}


while
true
do readReport
    sleep 60
done

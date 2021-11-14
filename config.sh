function init(){
    checkGit
    
}

function checkGit(){
    
    status=$(git --version)
    
    if [[ $status == *"version"* ]]; then
        echo "git installed"
    else
        echo "Please install git"
        exit
    fi
}

function dowloadSoftware(){
    nmap
    
}

function nmap(){
    git clone https://github.com/nmap/nmap.git
    ./configure
    make
    make install
}


function checkSO(){
    sed -n 3p /etc/os-release
    checkGit
}


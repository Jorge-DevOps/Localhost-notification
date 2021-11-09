menu=" \n Excerise A) \n Exercise B) \n Exercise C)"

menuParteA=" 
	\na) Determine the system date and time (all forms) 
	\nb) What information would the instruction output and explain
	\nc) What information would the uptime command output as 
	\nd) What information would the command netstat –an output as 
	\ne) What command could we use to find the TCP and UDP ports open? 
	\nf) Explain what netstat -putona means 
	\ng) What information would the lsof -i command output as 
	\nh) What is the command used to display the users that are currently Are they logged into the system?
	\ni) What is the last command used for 
	\nj) What information would the output of the netstat –rn command return? 
	\nk) What command should be used to view all file systems mounted on Linux system?"

parteAb="
\n 1) cat /proc/versión
\n 2) cat /proc/uptime
\n 3) cat /proc/meminfo
\n 4) cat /proc/filesystems
\n 5) cat /proc/cpuinfo
\n 6) cat /proc/interrupt 
\n 7) volver
"
system_timeMenu="
	\n\n 1) Date
	\n\n 2) date +%c
	\n\n 3) date +%A%d%B
	\n\n 4) date +""%A %d %B""
	\n\n 5) date %T
	\n\n 6) Volver
"

menuParteB=" 
	\n 1) The command ""ls"" (List files). This command allows you to view the contents of a directory and optionally its subdirectories. (see / execute / explain / attach evidence) 
	\n\n 2) The ""find"" command is used to search for files with certain characteristics. Explain what result is obtained when executing the statement: find / -name “* c” –print (In some modern versions of Linux, the –print it is not necessary, but in others it is). 
	\n\n 3) The command ""df"" presents the characteristics of a system of records. Explain what information is obtained when executing the df command 
	\n\n 4) The ""ps"" commandshows us the status of the processes. Explain the output of the ps –aux, ps - commands axf and pstree
	\n\n 5) volver"

menuParteB1="
	\n a) Explain the output information that is generated when placing the statement: ls –FC
	\n b) Explain the output information that is generated when placing the statement: ls –l * .f
	\n c) Explain the output information that is generated when placing the statement: ls –lt * .f
	\n d) Explain the output information that is generated when placing the statement: ls -a 
	\n e)volver"

meunParteB4="
	\n a) command ps –aux
	\n b) command ps –axf
	\n c) command pstree
	\n d) volver
	"
	

menuParteC="
	\n\n 1) Create a first script that contains the following lines (present as evidence - capture image and output when run. Remember to assign the execution permissions and also, the extension is "".Sh""):
	\n\n 2) Same as the previous case, for this second ""script"" place the instructions (in this Script we are making use of variables):
	\n\n 3) Same as the previous case, for this third ""script"" place the instructions (in this script we are making use of internal variables):
	\n\n 4) volver
	"

function ejecutarMenus() {
	echo -e $menu
	read CASE

	case "$CASE" in
   "A") ejecutarMenuParteA
   ;;
   "B") ejecutarMenuParteB
   ;;
   "C") ejecutarMenuParteC
   ;;
esac

}



function ejecutarMenuParteA() {
	clear
	echo -e $menuParteA
	read CASE

	case "$CASE" in
   "a") system_time
   ;;
   "b") menuParteAb
   ;;
   "c") uptime
	
	echo -e "This command refers to online time, wich allows us to obtain information about the time that a machine or server has been active. It also allows usobserve the number of users online, the current time and the average laod of the sytem "   
   ;;
   "d") netstat –an
	echo -e "This command show network status and protocol statistics. You can display the status of TCP and UDP endpoints in table format, routing table information, and interface information"   
   ;;
   "e")  
   ;;
   "f")
   ;;
   "g") echo -e "Selects the listing of files any whose internet of whose internet address matches the address specified in i"
   ;;
   "h")	w
	echo -e "The above command shows us all the users logged into the operating system with additional information about the sime they have been in the session, other commands they are executing and useful data" 	   
   ;;
   "i") echo -e "Shows the last registered in the user list"  
   ;;
   "j") echo -e ""
   ;;
   "k") echo -e "displays a list of currently mounted filesystems. Target mount point (TARGET), source device (SOURCE), file system type (FSTYPE), and relevant mount options (OPTIONS) for each file system." 
   ;;
esac
}

function ejecutarMenuParteB(){
	clear
	echo -e $menuParteB
	read CASE
	case "$CASE" in

    "1") parteB1
	;;
	"2") find / -name “*c” –print
	;;
	"3") 
	clear 
	df
	echo -e "If we use the command without modifiers df it gives us the disk space information in 1Kb unit."
	
	;;
	"4") ejecutarParteB4
	;;
esac
}

function ejecutarMenuParteC() {
	clear
	echo -e $menuParteC
	read CASE

	case "$CASE" in
    "1") ./miPrimerShell.sh
	;;
	"2") ./variables.sh
	;;
	"3") ./scriptcaptura.sh
	;;
	"4") ejecutarMenus
	;;
esac
}

function system_time() {

	echo -e $system_timeMenu
	
	read CASE

	case "$CASE" in
    "1")  date
	system_time
	;;
	"2") date +%c
	system_time
	;;
	"3") date +%A%d%B
	system_time
	;;
	"4") date +""%A %d %B""
	system_time
	;;
	"5") date %T
	system_time
	;;
	"6") ejecutarMenuParteA
	;;

esac

}

function portstcp() {
   echo -e "1) Losft"
	 

}

function menuParteAb() {

	echo -e $parteAb
	
	read CASE

	case "$CASE" in
	"1")
	
	 cat /proc/version
	     echo -e "In this command we can show
	 \n -the exact version of the Linux kernel used in our system
     \n -Name of the person who compiled the kernel and the name of the host
	 \n -Core type
   	 \n -The date and time of when the kernel was compiled"	 
	 
	menuParteAb	
  	;;
		
	"2") cat /proc/uptime
	echo -e " This is a file that contains two values 
	/n 1)How many seconds the system has been on
 	/n 2)How many seconds it has been inactive	
	"
      	
	menuParteAb
	;;
	"3") cat /proc/meminfo
	echo -e "This file that contains values for information about the use the use of RAM and CPU. The amounts are expressed in kibibytes 1 KiB0 1024 B"
	
	menuParteAb
	;;
	"4") cat /proc/filesystems 
	echo -e "The /proc file system contains an imaginary or virtual file system. It does not physically exist on disk, but is created in memory by the kernel. It is used to provide system-related information (originally about processes, hence its name)."

	menuParteAb
	;;
	"5") cat /proc/cpuinfo
	echo -e " Displays data about your computer's processor. For example, on my laptop, cat /proc/cpuinfo gives me a listing starting with:. This shows that I have only one processor, marked as 0 of the 80686 family (The '6' in the cpu family is middle digit): an AMD Athlon XP, running at just under 1GHZ. "

	menuParteAb
	;;
	"6") cat /proc/interrupts
	echo -e "This file records the number of interrupts per IRQ on the x86 architecture, the first column refers to the number of IRQs. Each CPU in the system has its own column and its own number of interrupts per IRQ. The next column tells you the type of interrupt and the last column contains the name of the device that is located on that IRQ.  "
	menuParteAb
	;;
	"7") ejecutarMenuParteA
	;;
	"8") ejecutarMenuParteA
	
esac
}



function parteB1() {
	echo -e $menuParteB1
	read CASE
	case "$CASE" in
    "a") 
	clear
	ls -FC
	parteB1
	;;
	"b")
	clear
	ls -l *.f
	parteB1
	;;
	"c")
	clear
	ls -lt *.f
	parteB1
	;;
	"d")
	clear
	echo -e "Include directory entries whose names begin with a dot (.)."
	ls -a
	parteB1
	;;
	"e") ejecutarMenuParteB
esac
}

function ejecutarParteB4() {
	echo -e $meunParteB4
	read CASE
	case "$CASE" in

    "a") ps –aux
	ejecutarParteB4
	;;
	"b") ps –axf 
	ejecutarParteB4
	;;
	"c") pstree
	ejecutarParteB4
	;;
	"d") ejecutarMenuParteB
esac
}





linux_logo -L 9 -a   
screenfetch
echo "TALLER 1 CORTE 2 "
ejecutarMenus  

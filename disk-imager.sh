#!/bin/bash

tput reset
Red='\033[0;31m' 
Yellow='\033[0;33m'
Cyan='\033[0;36m'
White='\033[0;37m'
BWhite='\033[1;37m'
BIRed='\033[1;91m' 
BOLD='\033[1m'
NOCOLOR='\033[0m'
logo () {      
	printf "
                                                                         ⠀⣠⣤⣄⡀⠀⠀⢀⣤⣦⣤⡀⠀⠀⠀⠀⠀
                                                                         ⢸⡏⠀⠈⠻⣦⣴⠋⠀⠀⢸⡇⠀⠀⠀⠀⠀
                                                                         ⠈⣿⡀⠀⣠⡟⠁⠀⠀⣠⡟⠁⠀⠀⠀⠀⠀
                                                                     ⠀    ⢸⣇⣴⠏⠀⠀⠀⣰⠏⠀⠀⠀⠀⠀⠀⠀
███╗   ███╗ █████╗ ██████╗ ███████╗    ██╗    ██╗██╗████████╗██╗  ██╗    ⢠⡿⠁⠀⠀⠀⣼⠿⢦⣄      ██████╗ ██╗   ██╗    ██╗  ██╗██╗  ██╗
████╗ ████║██╔══██╗██╔══██╗██╔════╝    ██║    ██║██║╚══██╔══╝██║  ██║  ⢠⡟⠁⠀⠀⠀⣼⠋⠀⠀⢹⣦⣤⣀    ██╔══██╗╚██╗ ██╔╝    ██║ ██╔╝██║ ██╔╝
██╔████╔██║███████║██║  ██║█████╗      ██║ █╗ ██║██║   ██║   ███████║ ⢠⡟⠀⠀⠀⢀⣾⠃⠀⠀⠀⣾⠁⠀⠙⣧⡀⠀ ██████╔╝ ╚████╔╝     █████╔╝ █████╔╝
██║╚██╔╝██║██╔══██║██║  ██║██╔══╝      ██║███╗██║██║   ██║   ██╔══██║ ⣿⠁⠀⠀⠀⠚⠃⠀⠀⠀⣼⠇⠀⠀⢠⡟⠙⣷ ██╔══██╗  ╚██╔╝      ██╔═██╗ ██╔═██╗
██║ ╚═╝ ██║██║  ██║██████╔╝███████╗    ╚███╔███╔╝██║   ██║   ██║  ██║ ⣿⠀⠀⠀⠀⠀⠀⠀⠀⠐⠏⠀⠀⠀⣾⠁⠀⣿ ██████╔╝   ██║       ██║  ██╗██║  ██╗
╚═╝     ╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝     ╚══╝╚══╝ ╚═╝   ╚═╝   ╚═╝  ╚═╝ ⠹⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠇⠀⢠⡟ ╚═════╝    ╚═╝       ╚═╝  ╚═╝╚═╝  ╚═╝
                                                                      ⠀ ⠻⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠃
                                                                      ⠀⠀ ⠀⠙⠻⢦⣤⣀⡀⠀⠀⠀⠀⢀⣴⠏⠀
                                                                      ⠀⠀       ⠉⠙⠛⠛⠛⠛⠋⠁⠀⠀							     
"
}

logo 

printf "

				$BIRed██╗    ██╗ █████╗ ██████╗ ███╗   ██╗██╗███╗   ██╗ ██████╗ ██╗
				$BIRed██║    ██║██╔══██╗██╔══██╗████╗  ██║██║████╗  ██║██╔════╝ ██║
				$BIRed██║ █╗ ██║███████║██████╔╝██╔██╗ ██║██║██╔██╗ ██║██║  ███╗██║
				$BIRed██║███╗██║██╔══██║██╔══██╗██║╚██╗██║██║██║╚██╗██║██║   ██║╚═╝
				$BIRed╚███╔███╔╝██║  ██║██║  ██║██║ ╚████║██║██║ ╚████║╚██████╔╝██╗
				$BIRed ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝

"
message="[+]!!! This is a script made by an Idiot 🤓 so please check the code before using or else you can wipe your entire disk !!!"; for ((i=0; i<${#message}; i++)); do echo "after 200" | tclsh; printf "${message:$i:1}"; done; echo;

tput reset
logo 
header () {
printf "						================================================\n"
printf "						||  This is a Script to make full disk image  ||\n"
printf "						================================================\n"

}

header
function show_loading() {
    local pid=$1
    local delay=0.1
    local spin='-\|/'

    printf "Scanning disks "
    
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spin#?}
        printf "[%c]  " "$spin"
        local spin=$temp${spin%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done

    printf "    \b\b\b\b"
}

# Simulate disk scanning process
sleep 3&

# Display loading animation
show_loading $!
printf "\n${BIRed}[+]You will need ROOT permission for this\n"
printf "${Cyan}[+]Enter Your Sudo Password\n"
printf "${BWhite}\n"
sudo fdisk -l | grep -o '/dev/.*: .*B' | uniq

printf "\n================================================\n"
printf "${BWhite}[-]Couldn't find your Disk? Rerun the script(y/n)\n"
read ans
	if [ -z "$ans" ]; then
		printf "[-]Input cannot be empty Please re-enter again(y/n)\n"
		read ans

	fi
	tput reset
	logo
	header
	if [[ $ans = [Yy] ]]; then
		printf "${Red}[+]Checking for Connected Disks\n"
		sleep 3&
		show_loading $!
		sudo fdisk -l | grep -o '/dev/.*: .*B'| uniq
		printf "\n${White}[?]Do you want to continue (y/n)\n"
		read suply
			if [ -z "$suply" ]
			then
				echo '[-]Inputs cannot be blank please try again!'
				printf "${White}[-]Please re-enter the choice(y/n)\n"
				read suply
			
			fi
		if [[ $suply = [Yy] ]]; then
			printf "=======================Continuing======================="
		else
			printf "[🤯]Exiting the script.......\nPlease check the drives before running the script" && exit
		fi
	fi
tput reset
logo
header
echo "[+]Type the disk you want to make image of (e.g.- /dev/sda)"	
printf "${BIRed}[!]Information!! Different drives has different name (e.g.- normal HDD's and SATA drives will start with /dev/sda and NVME drives will have /dev/nvme0n1 in their name)\n"

printf "${White}"
read -e disk
iferror () {
if [ -z $(echo $disk | grep -o "/dev/.*") ]; then
	printf "${White}[-]Hmm...Seems like you didn't enter correct format\n"
	printf "${White}[-]Please re-enter the disk name\n"
	printf "${White}[-]Enter the disk name you want to image of (e.g.- /dev/sda)\n"
	read -e disk

fi	
}
iferror
check_disk() {
	printf "${White}[+]You entered the disk $disk\n"
	if [ -b "$disk" ]; then
		echo "Disk Found!!"
	else
    		echo "Disk $disk does not exist. Please Re-run the script"
		exit 1
	fi
}
check_disk
iferror
printf "${BIRed}[?]You want to confirm (y/n)\n"
read choice
	if [ -z "$choice" ]
	then
		echo '[😐]Inputs cannot be blank please try again!'
		printf "${White}[?]Please re-enter the choice (y/n)\n"
		read choice
	fi
	check_disk
	
	if [[ $choice = [Yy] ]]; then
	printf "${BWhite}[+]Selecting the disk $disk for imaging\n"
else
	printf "${White}[+]Select the disk for imaging (e.g.- /dev/sda)\n"
	read -e disk
	iferror
	printf "[+]Selecting disk $disk for Imaging\n"
	printf "${BIRed}[?]Do you want to confirm? (y/n)\n"
	
	read altan
		if [ -z "$altan" ]
		then
			echo '[!]Inputs cannot be blank please try again!'
			printf "${White}[-]Please re-enter the choice (y/n)\n"
			read altan
		fi

	if [[ $altan = [Yy] ]]; then
		printf "[+]Selecting the disk $disk for imaging\n"
	else
		print "[:(]Please first make the choice then run the script" && exit
	fi
fi
tput reset
logo
header
printf "${BWhite}[=]Enter the folder name where you want to save the image other than $disk (e.g.-$HOME/temp_dir)\n"
read dest
if [[ ! -e $dest ]]; then
	echo "Directory doesn't exists. Creating."
    sudo mkdir $dest
fi
if [[ $dest = $disk ]]; then
	printf "[-]You cannot save the image to its original disk\n"
	printf "[=]Select another place to save the image\n"
	read -e dest
fi

printf "${White}[+]The image will be created to $dest. Continue? (y/n)\n"
read dicision
if [[ $dicision = [Yy] ]]; then
	echo "[+]Continuing........"
	if [ -z "$dicision" ]
	then
			echo '[😟]Inputs cannot be blank please try again!'
			printf "${White}[-]Please re-enter the choice (y/n)\n"
			read dicision
	fi
else
printf "[-]Exiting....." && exit	
fi
printf "[?]In Which name you want to save the disk image(e.g.- Disk_image.img)\n"
printf "[=]Leave blank for default......(In this default image will be saved with .img extention)\n"
read disk_name
name=$dest/new_image_-"$(date +"%Y_%m_%d_%I_%M_%p").img"
name_pro=$dest/$disk_name

if [ -z "$disk_name" ]; then
	printf "[+]Saving the image to $name"
else
	printf "[+]Saving the disk image to $name_pro"
fi
	banner () {
printf "

${BIRed}		╔═╗┌┬┐┌─┐┬─┐┌┬┐┬┌┐┌┌─┐  ┌┬┐┬ ┬┌─┐  ┌┬┐┬┌─┐┬┌─  ┌─┐┌─┐┌─┐ ┬ ┬┬┌─┐┬┌┬┐┬┌─┐┌┐┌	
${BWhite}		╚═╗ │ ├─┤├┬┘ │ │││││ ┬   │ ├─┤├┤    │││└─┐├┴┐  ├─┤│  │─┼┐│ ││└─┐│ │ ││ ││││
${BIRed}		╚═╝ ┴ ┴ ┴┴└─ ┴ ┴┘└┘└─┘   ┴ ┴ ┴└─┘  ─┴┘┴└─┘┴ ┴  ┴ ┴└─┘└─┘└└─┘┴└─┘┴ ┴ ┴└─┘┘└┘

"
}
if [[ $dicision = [Yy] ]]; then
	tput reset
	logo
	banner
else
	echo "[-]Exiting......!!! "
	exit
fi

make_hash () {
	printf "[+]Do you want to make Hash of the created image(y/n)"
	read select
	if [[ $select = [Yy] ]]; then
		echo "[+]Choose the hashing algorithm (Type the corresponding number)"
		echo "1) md5 2) sha1 3) sha256 4) sha512"
		read halgo
		case $halgo in
			1)
				echo "[+]Generating Hash..."
				md5sum $name | cut -d " " -f1 | sudo tee $dest/hashed.md5
				sleep 1
			;;
			2)
				echo "[+]Generating Hash..."
				sha1sum $name | cut -d " " -f1 | sudo tee $dest/hashed.sha1
				sleep 1
			;;
			3)
				echo "[+]Generating Hash..."
				sha256sum $name | cut -d " " -f1 | sudo tee $dest/hashed.sha256
				sleep 1
			;;
			4)
				echo "[+]Generating Hash..."
				sha512sum $name | cut -d " " -f1 | sudo tee $dest/hashed.sha512
				sleep 1
			;;
			*)
				echo "[+]Unknown Choice..."
			;;
		esac
	else
		echo "[-]Hash will not be created"
	fi

	}
hash_pro () {
	printf "[+]Do you want to make Hash of the created image(y/n)"
	read select
	if [[ $select = [Yy] ]]; then
		echo "[+]Choose the hashing algorithm (Type the corresponding number)"
		echo "1) md5 2) sha1 3) sha256 4) sha512"
		read halgo
		case $halgo in
			1)
				echo "[+]Generating Hash..."
				md5sum $name_pro | cut -d " " -f1 | sudo tee $dest/hashed.md5
				sleep 1
			;;
			2)
				echo "[+]Generating Hash..."
				sha1sum $name_pro | cut -d " " -f1 | sudo tee $dest/hashed.sha1
				sleep 1
			;;
			3)
				echo "[+]Generating Hash..."
				sha256sum $name_pro | cut -d " " -f1 | sudo tee $dest/hashed.sha256
				sleep 1
			;;
			4)
				echo "[+]Generating Hash..."
				sha512sum $name_pro | cut -d " " -f1 | sudo tee $dest/hashed.sha512
				sleep 1
			;;
			*)
				echo "[+]Unknown Choice..."
			;;
		esac
	else
		echo "[-]Hash will not be created"
	fi

	}


	set -e

	if [ -z "$disk_name" ]; then
		sudo dd if=$disk of=$name bs=1024k status=progress
		tput reset
		logo
		banner
		echo "[+]Image has been created in $dest...........!!"
		sleep 3 
		tput reset
		logo
		banner
		make_hash
		#me_protec
	else
		
		sudo dd if=$disk of=$name_pro bs=1024k status=progress
		tput reset
		logo
		banner
		echo "[+]Image has been created in $dest...........!!"
		sleep 3
		tput reset
		logo
		banner
		hash_pro
		#pro_protec
fi


printf "				==========================================================\n"
printf "				||		Disk Image has been created             ||\n"
printf "				==========================================================\n"

printf " 
						 __    o        | 
						|_ __  |  _  \\/ | 
						|__| |_| (_) /  o 

"

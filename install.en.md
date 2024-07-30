# Install NextGuard

## Supported operating systems

### ubunutu 
	
	x86 64bit version：18、20、22
	
### centos

	x86 64bit version：7.9、8.5

### window

	x86 64bit version：10、11
	
## Firewall ports that need to be opened

80 tcp

443 tcp

5060 udp

10100～10200 tcp

## Get the software

ubunutu/centos/window,In a directory with plenty of free space on the hard disk, run as root in a terminal window:
 	
 	git clone https://github.com/icctvcloud/nextguard.git

## docker
The NextGuard system runs in docker mode, so you need to install the docker support environment. Enter the nextguard directory

ubunutu ，run as root in a terminal window

	docker_ubuntu_install.sh
	
	
centos ，run as root in a terminal window

	docker_centos_install.sh
	
window，need install docker desktop	

## initialize

edit .env 

Modify ACME_EMAIL in .env (used to apply for SSL certificate) to your own email address.

Modify various keys in .env.

## Start
ubunutu/centos，run as root in a terminal window

	nextguard_start.en.sh

window，double click nextguard_start.en.bat
 	
## Shutdown
ubunutu/centos，run as root in a terminal window

	nextguard_stop.sh

window，double click nextguard_stop.bat


#!/bin/bash
# DARPA CGC...
# ......DECREE OS.. EZ DUZ IT INSTALLATION/DOCZ
# By: lev3lz top-hat-sec.com for D.E.S.C.A.R.T.E.S.... or whoever
fask
fone_(){
echo 'downloading/executing components..'
cd /opt
mkdir cgc
cd /opt/cgc
wget http://repo.cybergrandchallenge.com/boxes/Vagrantfile
}
ftwo_(){
echo 'executing vagrant environment..goodluck..'
cd /opt/cgc/
vagrant up
vagrant ssh
}
fthree_(){
if which xdg-open > /dev/null
then
  xdg-open 'http://www.vagrantup.com/downloads.html'
elif which gnome-open > /dev/null
then
  gnome-open 'http://www.vagrantup.com/downloads.html'
fi
}
fdoxone_(){
if which xdg-open > /dev/null
then
  xdg-open 'https://github.com/CyberGrandChallenge/cgc-release-documentation/blob/master/walk-throughs/building-a-cb.md'
elif which gnome-open > /dev/null
then
  gnome-open 'https://github.com/CyberGrandChallenge/cgc-release-documentation/blob/master/walk-throughs/building-a-cb.md'
fi
}
fdoxtwo_(){
if which xdg-open > /dev/null
then
  xdg-open 'https://github.com/CyberGrandChallenge/cgc-release-documentation/blob/master/walk-throughs/cb_author_scoring_doc.pdf'
elif which gnome-open > /dev/null
then
  gnome-open 'https://github.com/CyberGrandChallenge/cgc-release-documentation/blob/master/walk-throughs/cb_author_scoring_doc.pdf'
fi
}
fdoxthree_(){
if which xdg-open > /dev/null
then
  xdg-open 'https://github.com/CyberGrandChallenge/cgc-release-documentation/blob/master/walk-throughs/understanding-poll-generators.md'
elif which gnome-open > /dev/null
then
  gnome-open 'https://github.com/CyberGrandChallenge/cgc-release-documentation/blob/master/walk-throughs/understanding-poll-generators.md'
fi
}
fdoxfour_(){
if which xdg-open > /dev/null
then
  xdg-open 'https://github.com/CyberGrandChallenge/cgc-release-documentation/blob/master/walk-throughs/debugging-a-cb.md'
elif which gnome-open > /dev/null
then
  gnome-open 'https://github.com/CyberGrandChallenge/cgc-release-documentation/blob/master/walk-throughs/debugging-a-cb.md'
fi
}
fdoxfive_(){
if which xdg-open > /dev/null
then
  xdg-open 'https://github.com/CyberGrandChallenge/cgc-release-documentation/blob/master/walk-throughs/testing-a-cb.md'
elif which gnome-open > /dev/null
then
  gnome-open 'https://github.com/CyberGrandChallenge/cgc-release-documentation/blob/master/walk-throughs/testing-a-cb.md'
fi
}
fdox(){
clear
echo '''
██████╗ ███████╗ ██████╗██████╗ ███████╗███████╗
██╔══██╗██╔════╝██╔════╝██╔══██╗██╔════╝██╔════╝
██║  ██║█████╗  ██║     ██████╔╝█████╗  █████╗  
██║  ██║██╔══╝  ██║     ██╔══██╗██╔══╝  ██╔══╝  
██████╔╝███████╗╚██████╗██║  ██║███████╗███████╗
╚═════╝ ╚══════╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝
DOCUMENTATION QUICK REF

'''
echo ''
echo ''
read -p '''
[*] 1 - Building A CB
[*] 2 - CB Authoring Score
[*] 3 - Understanding Poll Generators
[*] 4 - Debugging a CB
[*] 5 - Testing A CB
[>] Enter Menu Selection: ''' MENU
if [ $MENU = 0 ]
then
read -p '''ZEr0!?!? ''' TARGETIP
mkdir -p $TARGETIP
cd $TARGETIP
read -p '''
[*] Press Enter To Return To Menu'''
fdox
elif [ $MENU = 1 ]
then
	fdoxone_
elif [ $MENU = 2 ]
then
	fdoxtwo_
elif [ $MENU = 3 ]
then
	fdoxthree_
elif [ $MENU = 4 ]
then
	fdoxfour_
elif [ $MENU = 5 ]
then
	fdoxfive_
fdel
else
echo '[*] Invalid option'
fi
}
fask(){
clear
echo '''
██████╗ ███████╗ ██████╗██████╗ ███████╗███████╗
██╔══██╗██╔════╝██╔════╝██╔══██╗██╔════╝██╔════╝
██║  ██║█████╗  ██║     ██████╔╝█████╗  █████╗  
██║  ██║██╔══╝  ██║     ██╔══██╗██╔══╝  ██╔══╝  
██████╔╝███████╗╚██████╗██║  ██║███████╗███████╗
╚═════╝ ╚══════╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝
easy installation by lev3lz
must install vagrant release version MANUALLY for DECREE to launch
http://www.vagrantup.com/downloads.html
'''
echo ''
echo ''
read -p '''
[*] 1 - Install DECREE OS
[*] 2 - Launch DECREE OS
[*] 3 - Download VagrantVM Release
[*] 4 - DECREE OS DOCUMENTATION
[>] Enter Menu Selection: ''' MENU
if [ $MENU = 0 ]
then
read -p '''[*] TargetIP: ''' TARGETIP
mkdir -p $TARGETIP
cd $TARGETIP
read -p '''
[*] Press Enter To Return To Menu'''
fask
elif [ $MENU = 1 ]
then
fone_
elif [ $MENU = 2 ]
then
ftwo_
elif [ $MENU = 3 ]
then
fthree_
elif [ $MENU = 4 ]
then
fdox
fi
}
while [ true ]
do
clear
fask
done

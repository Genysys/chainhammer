echo 
echo sudo yum -y update
echo  
set +e # don't trap this, there are frequent errors
sudo yum -y update
set -e
echo 
PACKAGES="python3-pip python3-venv python-dev wget openssl libssl-devel libudev-devel openssl-devel git gcc gcc-c++ curl kernel-devel systemd-devel git make gcc-c++ gcc file binutils gtk+-devel glibc.i686 zlib.i686 fontconfig freetype freetype-devel fontconfig-devel libstdc++ libfontconfig.so.1 libstdc++.so.6 wget openssl-devel.x86_64"
echo installing $PACKAGES
sudo yum install -y $PACKAGES 

echo
echo packages install ready.
echo


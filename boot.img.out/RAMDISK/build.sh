cd ~/
mkdir a
cd a
mkdir ~/bin
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
yes | repo init -u https://github.com/Rendyindo/manifest -b nougat-7.1
repo sync -c
source build/envsetup.sh
cd devices
rm -rf X510
git clone https://github.com/rorre/Flyme_X510-cm X510 -b los-rework
cd X510
chmod +x custom_sepolicy.sh
flyme fullota
sudo apt install wput
export DATEA=$(date +"%d%m%y")
wput out/f*.zip ftp://$USR:$PAWD@uploads.androidfilehost.com:21/

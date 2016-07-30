# system
sudo apt-get update
sudo apt-get upgrade -y

# locales
# in /etc/default/keyboard  => XKBMODEL="pc105"; XKBLAYOUT="fr"; XKBVARIANT="mac"; XKBOPTIONS="" ; BACKSPACE="guess" 
sudo sh -c 'echo LC_ALL=en_US.UTF-8     >> /etc/default/locale'
sudo sh -c 'echo LANG=en_US.UTF-8       >> /etc/default/locale'
sudo sh -c 'echo LC_CTYPE=en_US.UTF-8   >> /etc/default/locale'

# ssh
sudo apt-get install -y ssh openssh-server --no-install-recommends
# base
sudo apt-get install -y nano vim zsh bash rsync rxvt-unicode-256color \
                        tree jq silversearcher-ag curl htop dstat git gcc \
                        bzip2 make locate tmux lsof openssl gnuplot sshfs \
                        terminator vim htop wget \
                        ntpdate patch zip unzip exuberant-ctags --no-install-recommends
# java
sudo apt-get install -y openjdk-8-jdk openjdk-8-jre --no-install-recommends
# python
sudo apt-get install -y python python3 python-setuptools python3-setuptools \
                        python-dev --no-install-recommends
sudo easy_install pip


# Vbox guest addition
sudo apt-get install -y linux-headers-$(uname -r) build-essential module-assistant dkms virtualbox-guest-x11
VB_VERSION=5.0.16
wget http://download.virtualbox.org/virtualbox/${VB_VERSION}/VBoxGuestAdditions_${VB_VERSION}.iso
sudo mkdir /media/VBoxGuestAdditions
sudo mount -o loop,ro VBoxGuestAdditions_*.iso /media/VBoxGuestAdditions
sudo yes | sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
rm VBoxGuestAdditions_*.iso
sudo umount /media/VBoxGuestAdditions
sudo rmdir /media/VBoxGuestAdditions

# docker
sudo apt-get install apt-transport-https ca-certificates --no-install-recommends
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-get install linux-image-extra-$(uname -r)
sudo sh -c 'echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" > /etc/apt/sources.list.d/docker.list'
sudo apt-get update
sudo apt-get install -y docker-engine --no-install-recommends

sudo usermod -aG docker xs
sudo pip install docker-compose
# chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get -y install google-chrome-stable --no-install-recommends

sudo reboot
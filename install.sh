#!/bin/bash
apt update
apt install vim htop zsh glances ccze dnsutils neofetch fonts-powerline sudo -y
cp zshrc/zshrc /etc/zsh/zshrc
chown root:root /etc/zsh/zshrc
chmod 644 /etc/zsh/zshrc

if [ -d "/home/bbcorp" ]; then
	usermod -a -G sudo bbcorp
	chsh -s /usr/bin/zsh bbcorp
	if [ ! -d "/home/bbcorp/.vim" ]; then
		mkdir -p /home/bbcorp/.vim
		cp -a vimrc/* /home/bbcorp/.vim
		chown -R bbcorp:bbcorp /home/bbcorp/.vim
	fi
fi

if [ -d "/root" ] && [ ! -d "/root/.vim" ]; then
	chsh -s /usr/bin/zsh
	mkdir -p /root/.vim
	cp -a vimrc/* /root/.vim
	chown -R root:root /root/.vim
fi

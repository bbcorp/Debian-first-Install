# Debian first install
## What does it do ?
 - install packages I use everyday (vim, htop, ccze, etc.)
 - copy my .vim config
 - copy zshrc for all users
 - change shell to zsh for my user (bbcorp) and root
## How to use
clone the repo and fetch all submodules :
`$ git clone --recursive https://git.chunkz.net/bbcorp/debian-first-install.git`
Then go into the new directory and make install.sh executable :
`$ chmod +x install.sh`
And finally run install.sh as root :
`# ./install.sh`


#!/bin/sh


DOWNLOAD_PATH="https://ds9.si.edu/download/darwinbigsur/ds9.darwinbigsur.8.2.1.tar.gz"
readonly DOWNLOAD_PATH


mkdir ~/bin
cd ~/bin

curl -O ${DOWNLOAD_PATH}
tar zxvf ${DOWNLOAD_PATH##*/}

rm ${DOWNLOAD_PATH##*/}

./ds9
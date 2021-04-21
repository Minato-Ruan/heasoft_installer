#!/bin/sh

WORK_PATH=$(pwd)
readonly WORK_PATH

# CALDB Setup File Path:
STEUP_FILE="https://heasarc.gsfc.nasa.gov/FTP/caldb/software/tools/caldb_setup_files.tar.Z"
readonly STEUP_FILE

# URL of Mission Data:
# Filename Format : goodfiles_<mission>_<instrument>_tar.Z
DOWNLOAD_PATH=(
    "https://heasarc.gsfc.nasa.gov/FTP/caldb/data/swift/bat/goodfiles_swift_bat_20171016.tar.Z"
    "https://heasarc.gsfc.nasa.gov/FTP/caldb/data/swift/mis/goodfiles_swift_mis_20210317.tar.Z" 
    "https://heasarc.gsfc.nasa.gov/FTP/caldb/data/swift/uvota/goodfiles_swift_uvota_20201215.tar.Z" 
    "https://heasarc.gsfc.nasa.gov/FTP/caldb/data/swift/xrt/goodfiles_swift_xrt_20200724.tar.Z"
    "https://heasarc.gsfc.nasa.gov/FTP/caldb/data/swift/sc/goodfiles_swift_mis_20210317.tar.Z"
)
readonly DOWNLOAD_PATH
FILE_NAME=()
for file_name in ${DOWNLOAD_PATH[@]};do
    FILE_NAME+=(${file_name##*/})
done

# HeaSoft Installer Path:
HEASOFT_PATH="~/software/heasoft-6.28/"
readonly HEASOFT_PATH


# Install HomeBrew
if ! [ -x "$(command -v brew)" ];then
    echo "Install HomeBrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install GCC
if ! [ -x "$(command -v gcc)" ];then
    echo "Install GCC"
    brew install gcc
fi


# NASA said I should set this Env Vir. But in my case I have to delete it.
# YOU MAY NEED IT

# export CC=/usr/local/bin/gcc-10
# export CXX=/usr/local/bin/g++-10
# export FC=/usr/local/bin/gfortran-10


# Download datafile.
# cd $WORK_PATH
# source ./download.sh


# Install HeaSoft
cd $WORK_PATH
source ./install.sh

# Install HeaSoft


# NASA said I should set this Env Vir. But in my case I have to delete it.
# YOU MAY NEED IT

# export FC=/usr/local/bin/gfortran-9
# export CC=/usr/local/bin/gcc-9
# export CXX=/usr/local/bin/g++-9
# export PERL=/usr/bin/perl
# export PYTHON=/usr/bin/python

# export PATH="/usr/bin:$PATH"

# unset CFLAGS CXXFLAGS FFLAGS LDFLAGS


cd ~/software/heasoft-6.28/BUILD_DIR
./configure > config.txt 2>&1
make > build.log 2>&1
make install > install.log 2>&1
# ./configure >& config.out
# make >& build.log
# make install >& install.log

echo "Press Y to allow we copy new shell file(caldbinit.sh) to ~/software/caldb/software/tools"
cp -i ${WORK_PATH}/source/caldbinit.sh ~/software/caldb/software/tools

echo "Press Y to allow we copy new bash_profile"
if ! [ -x "$(ls ~/.bash_profile)" ];then
    echo "copy new bash_profile"
    cp -i ${WORK_PATH}/source/.bash_profile ~/
    cp -i ${WORK_PATH}/source/.bashrc ~/
fi

source ~/.bashrc

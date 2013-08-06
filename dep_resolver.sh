#!/bin/sh
PWD_=`pwd`
PYTHONPATH=${PYTHONPATH}:${PWD_}
export PYTHONPATH
#export PYTHONPATH=~/patrec_master/

FOUND=`dpkg -S python2.7 | grep -iE  'python-scipy' > /dev/null 2>&1`
if [ ${?} -ne 0 ]
then
	sudo apt-get install python-numpy python-scipy python-matplotlib
fi


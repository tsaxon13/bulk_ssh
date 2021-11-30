#!/bin/bash

HOSTLIST=${1}
SSHPASS="/usr/bin/sshpass"

echo -n "USER: "
read USER
echo -n "PASSWORD: "
read -s PASSWORD
echo

for HOST in `cat ${HOSTLIST}`
do
	# Put stuff here that you want to run for each host

	# Example for passing a password with a '$'
        # ${SSHPASS} -p "${PASSWORD}" ssh -t -t -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${USER}@${HOST} 'echo '"'"${PASSWORD}"'"' | sudo -S id -a;'

	echo -------------- Processing ${HOST} --------------------------

	${SSHPASS} -p "${PASSWORD}" ssh -t -t -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${USER}@${HOST} 'echo `hostname`:`rpm -q bash`; echo '"'"${PASSWORD}"'"' | sudo -S yum -y update bash'

	echo ------------------------------------------------------------
done

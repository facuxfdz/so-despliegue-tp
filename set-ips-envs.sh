#/bin/bash

TP_FOLDER_PATH=<PATH TO tp-2022-1c-SIGSEGV>
IP_USER=<VM USER>

for ip in $(cat ips.txt); do
    echo "Copying tp to $ip"
    scp -r $TP_FOLDER_PATH $IP_USER@$ip:~/
    scp -r install-commons.sh $IP_USER@$ip:~/
    echo "\033[1;32m $ip is ready to run the install-commons.sh script\033[0m"
done
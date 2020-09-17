#!/bin/bash

filename=hosts.txt
declare -a server  # заводим массив для хостов 
server=(`cat "$filename"`) # заполняем массив их файла
declare -a passedServers # массив для хостов на который возникла ошибка 

# Доставляем ключи ssh на хосты 
for i in `cat "$filename"`
    do
        sshpass -p 'root' ssh-copy-id root@${i}
done


for ((ip = 0 ; ip < ${#server[@]} ; ip++ ))
   do
    set a=`ssh root@${server[$ip]} 'yum install htop | grep Error'` # Заводим переменную и записываем туда сообщение yum об ошибке 
    if [ a == '' ]; then
 	 	passedServers+=("${server[$ip]}") 
    else
  	for s in passedServers
  	 do
     ssh root@${passedServers[$s]} 'yum downgrade htop'
    done
  break;
fi
    #echo "Element [$ip]: ${myArray[$ip]}"
done
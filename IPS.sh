#!/bin/bash

if [ $# -eq 0 ]
then
    echo 'Usege :'
    echo "        [$0] [IP]"
    echo 'exampl :'
    echo "        $0 8.8.8.8"
else
  lgreen=`echo -en "\e[92m"`
  echo "${lgreen}IP :"
  curl -s https://ipinfo.io/$1|grep ip|head -n 1|cut -d\" -f4
  echo '--------------------'
  echo "${lgreen}CITY :"
  curl -s https://ipinfo.io/$1|grep city|head -n 1|cut -d\" -f4
  echo '--------------------'
  echo "${lgreen}REGION :"
  curl -s https://ipinfo.io/$1|grep region|head -n 1|cut -d\" -f4
  echo '--------------------'
  echo "${lgreen}COUNTRY :"
  curl -s https://ipinfo.io/$1|grep country|head -n 1|cut -d\" -f4
  echo '--------------------'
  echo "${lgreen}LOC :"
  curl -s https://ipinfo.io/$1|grep loc|head -n 1|cut -d\" -f4
  echo '--------------------'
  echo "${lgreen}POSTAL :"
  curl -s https://ipinfo.io/$1|grep postal|head -n 1|cut -d\" -f4
  echo '--------------------'
  echo "${lgreen}TIMEZONE :"
  curl -s https://ipinfo.io/$1|grep timezone|head -n 1|cut -d\" -f4
  echo '--------------------'
  red=`echo -en "\e[31m"`
  echo "${red}MAKE BY : @d_5tr "
  echo "${red}team : @zer0one_01"

fi

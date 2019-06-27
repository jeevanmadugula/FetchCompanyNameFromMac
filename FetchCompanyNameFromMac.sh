#! /bin/sh

#Error Codes
#1 - Mac address not passed

if [ $# -ne 1 ]
then
  echo "Mac address should be passed to the script"
  exit 1
fi

MAC=$1

docker run maiwj/curl:latest curl -s "https://api.macaddress.io/v1?apiKey=at_wpRx5fW7FoznXxRzQ5IJi9K8Ta5xn&output=json&search=$MAC" > curloutput


cat curloutput |cut -f3 -d","|tr -d "\""




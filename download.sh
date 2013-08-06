#/bin/sh

url=${1}
#regex = ${}
http_resp=`curl -G ${1} 2>/dev/null`
#list=`echo "${http_resp}"| grep -E -o '\w+\.npz' | sort -u`
list=`echo "${http_resp}"| grep -E -o '\w+\.py' | sort -u`
list_op=`echo "${list}" >list.txt`

while read line
do
	_download=${url}${line}	
	echo "${_download}"
	wget -o download.log ${_download}

done < list.txt

rm -rf list.txt
rm -rf download.log


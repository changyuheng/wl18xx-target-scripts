./sta_connect-ex.sh $@

sleep 2
### start udhcp client, if not started
output=`ps | grep -v grep | grep udhcpc`
set -- $output
echo $output
if [ -z "$output" ]; then
 udhcpc -i wlan0 &
fi

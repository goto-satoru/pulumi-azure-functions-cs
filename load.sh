#/bin/sh -x
ENDPOINT="$(pulumi stack output Endpoint)"
while true
do
 date
 curl -s $ENDPOINT
 sleep 10
done

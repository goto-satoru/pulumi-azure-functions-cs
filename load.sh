#/bin/sh -x

while true
do
  date
  curl -s https://csharp-aps-b334da75.azurewebsites.net/api/Hello?name=Pulumi
  sleep 10
done

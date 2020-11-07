#/bin/sh -x

while true
do
  date
  curl -s https://csharp-aps-61e40252.azurewebsites.net/api/Hello?name=Pulumi
  sleep 10
done

#!/usr/bin/env bash
echo -n "H: "
ssh pi@home.naut.ca -p 8080 curl -s sensor:8080/humidity
echo "%"
echo -n "T: "
ssh pi@home.naut.ca -p 8080 curl -s sensor:8080/temperature
echo "°C" 
echo -n "P: "
ssh pi@home.naut.ca -p 8080 curl -s sensor:8081/pm2
echo "µg"

#!/bin/bash

fullString="  192.168.1.1           2c-4d-54-b2-56-20     dynamic   "
ipAddress=${fullString:2:11}
macAddress=${fullString:24:17}
echo "i strängen $fullString"
echo "$macAddress är MAC addressen"
echo "$ipAddress är ip addressen"

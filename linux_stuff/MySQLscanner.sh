#!/bin/bash

#script to find hotsts with MySQL installed

echo "Enter first IP address:"

read firstIP

echo "Enter last octet of the IP address:"

read lastOcteIP

echo "Enter the port number for scanning:"

read port

nmap -sT $firstIP-$lastOcteIP -p $port > /dev/null -oG MySQLScan

cat MySQLScan | grep open > MySQLScan2

cat MySQLScan2
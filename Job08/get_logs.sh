#!/bin/bash
user="emmanuel-constantin"
output_file="number_connection-$(date +"%d-%m-%Y-%H:%M")"
num_connections=$(grep $user /var/log/auth.log | grep "session opened" | wc -l)
echo $num_connections > $output_file
tar -cvf $output_file.tar $outputfile
mkdir -p /home/emmanuel-constantin/Documents/shell.exe/Job08/Backup
mv $output_file.tar /home/emmanuel-constantin/Documents/shell.exe/Job08/Backup

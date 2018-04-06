#!/bin/bash
echo "--- INIZIO ---"
lftp sftp://user:password@server <<EOF
mirror --parallel=1 --use-pget-n=1 folder_server_contain_file folder_destination;
exit
EOF
echo "--- FINE ---"

#EXAMPLE
#echo "--- INIZIO ---"
#lftp sftp://root:qwert56@sftp_sever.com <<EOF
#mirror --parallel=1 --use-pget-n=1 / /var/www/my_project;
#exit
#EOF
#echo "--- FINE ---"
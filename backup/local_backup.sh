#!/bin/bash -x

#create backup filename and filepath
#pg_dump -Fc is compressed by default. However, it is not a .zip or .gzip, so don't call it that.
fileback=loonatlas_latest.backup
filename=loonatlas_$(date -d "today" +"%Y%m%d-%H%M").backup
filepath=/home/ubuntu/db/backup/
echo $filepath$filename

#create backup locally
#pg_dump -Fc is compressed by default. However, it is not a .zip or .gzip, so don't call it that.
sudo -u postgres pg_dump loonatlas -Fc > $filepath$filename

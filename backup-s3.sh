#!/bin/bash

mysqldump -u root --password="$db_pass"  kritika  tblEmployee1 > /tmp/dump3.sql
/usr/local/bin/aws s3 cp  /tmp/dump3.sql s3://mysql-backup-s3-new
# sudo mkdir new-dir

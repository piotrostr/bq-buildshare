#!/bin/bash

# enable local data loading
./hack/connect.sh < ./sql/enable-loading-data.sql

# import csv
mysqlimport \
  --ignore-lines=1 \
  --fields-terminated-by=, \
  -u root \
  --port 3306 \
  --password \
  --local \
  db ./data/melb_data.csv

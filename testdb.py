import os
import gzip
import json
# folder path

dir_path ='files/'

# list to store files
res = []
# Iterate directory
import os


import mysql.connector
print('connecting')
mydb = mysql.connector.connect(
  host="3.1.223.222",
  user="ivan",
  password="MajuBersama123",
  # database="aws_log_db",
)
print('->', mydb)
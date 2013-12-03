echo 'RowId,Location' >> submission1.csv
tac submission1.csv |gzip >submission.csv.gz

s/import \(\w*\.hpp\)/#include ".\/\1"/g
s/import \(\w*\.h\)/#include ".\/\1"/g
s/import \(\w*\)/#include <\1>/g
s/):/){/g
s/\(\t.*\)\(\r\)/\1;\2/g
s/\(return.*;\)/\1\r}/g

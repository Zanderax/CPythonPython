s/import \(\w*\)/#include "\1.hpp"/g
s/):/){/g
s/\(\t.*\)\(\r\)/\1;\2/g
s/\(return.*;\)/\1\r}/g

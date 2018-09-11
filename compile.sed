# *.h and *.hpp on an import means you are looking for programmer-defined header files
s/import \(\w*\.hpp\)/#include ".\/\1"/g
s/import \(\w*\.h\)/#include ".\/\1"/g

# no extention on import means you are looking for a standard library header files
# more info here - https://stackoverflow.com/questions/21593/what-is-the-difference-between-include-filename-and-include-filename
s/import \(\w*\)/#include <\1>/g

# replaces python : to start a function/class with C++ {
s/):/){/g

# adds a semi colon to the end of every line beginning with a tab
s/\(\t.*\)\(\r\)/\1;\2/g

# adds } at the end of a block of tabbed lines assuming that return is the last statement in the block need; TODO: generalize blocks
s/\(return.*;\)/\1\r}/g

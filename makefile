all:
	cat CPythonPython.cpp | sed 's/import/#include/g' | sed 's/):/){/g' | sed 's/\r/;/g'  &> /home/davidb/cppython/CPythonPython_pyc.cpp
	g++ CPythonPython_pyc.cpp -I CPythonPython.hpp -o CPythonPython.o
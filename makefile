all:
	sed CPythonPython.cpp -f compile.sed > CPythonPython_pyc.cpp
	g++ CPythonPython_pyc.cpp -I CPythonPython.hpp -o CPythonPython.o
all: averages_wrapper.so

averages_wrapper.so: averages_wrapper.o
	g++ -shared -o averages_wrapper.so averages_wrapper.o -L.. -laverages -lgfortran

averages_wrapper.o: averages_wrapper.cpp
	g++ -O2 -fPIC -I$(PYTHONHPC)/include/python2.7 -I../ -o averages_wrapper.o -c averages_wrapper.cpp

averages_wrapper.cpp: caverages.pxd averages_wrapper.pyx
	cython --cplus averages_wrapper.pyx

clean:
	rm -f averages_wrapper.so averages_wrapper.o averages_wrapper.cpp

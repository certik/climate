# Modify these for your Fortran compiler:

# GFortran
F90 = gfortran
F90FLAGS = -Wall -Wextra -Wimplicit-interface -fPIC
# Debug flags:
F90FLAGS += -g -fbounds-check
# Release flags:
#F90FLAGS += -O3 -march=native -ffast-math -funroll-loops

# Intel ifort
#F90 = ifort-12.0.191
#F90FLAGS = -stand f95 -warn all
# Debug flags:
#F90FLAGS += -check all
# Release flags:
#F90FLAGS += -xHOST -O3 -no-prec-div -static

PROG = libaverages.a

OBJS = caverages.o averages.o constants.o types.o

all: $(PROG)
	cd lib; make

$(PROG): $(OBJS)
	ar rcs $@ $(OBJS)

clean:
	rm -f $(PROG) $(OBJS) *.mod
	cd lib; make clean

%.o: %.f90
	$(F90) $(F90FLAGS) -c $<

averages.o: types.o constants.o
caverages.o: averages.o
utils.o: types.o
constants.o: types.o

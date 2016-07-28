FC=g95

OBJ=nr.o nrtype.o nrutil.o gaussj.o

fitting.exe: $(OBJ) fitting.o
	$(FC) $^ -o $@

%.o: %.f90
	$(FC) -c $<

clean:
	del *.o

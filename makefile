CXX = g++
CXXFLAGS = -g -Wall - Wextra - Wpedantic
programname: numberconversion.cpp romandigitconverter.cpp numberconversion.o romandigitconverter.o
	$(CXX) $(CXXFLAGS) -o numberconversion.cpp romandigitconverter.o numberconversion.o romandigitconverter.o
numberconversion.o: numberconversion.cpp numberconversion.h
	$(CXX) $(CXXFLAGS) -c numberconversion.cpp
romandigitconverter.o: romandigitconverter.cpp
	$(CXX) $(CXXFLAGS) -c romandigitconverter.cpp
.PHONY : clean
clean:
	rm *.o
	rm programname

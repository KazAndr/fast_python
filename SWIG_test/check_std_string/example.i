%module example
%{
#include <iostream>
#include <string>
#include <vector>
#include "example.h"
%}

%include "std_vector.i"
%include "std_string.i"

namespace std{
	%template(IntVector) vector<int>;
	%template(DoubleVector) vector<double>;
	%template(FloatVector) vector<float>;
	%template(StringVector) vector<string>;
	%template(ConstCharVector) vector<const char*>;
}

%include "example.h"

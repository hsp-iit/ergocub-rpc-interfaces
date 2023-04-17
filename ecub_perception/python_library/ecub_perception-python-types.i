%module(directors="1", package="ecub_perception") ecub_perception

/**
 * It is important to enable Director classes in SWIG to override methods
 * of the automaticallly generated class "Service"
 */
%feature("director") eCubPerceptionInterface;

%include "yarp_import.i"
%include <std_vector.i>

%{
#include <eCubPerceptionInterface/eCubPerceptionInterface.h>
#if PY_VERSION_HEX >= 0x03020000
    # define SWIGPY_SLICE_ARG(obj) ((PyObject*) (obj))
#else
    # define SWIGPY_SLICE_ARG(obj) ((PySliceObject*) (obj))
#endif
%}

%template(ListYarpMatrix) std::vector<yarp::sig::Matrix>;

%include <eCubPerceptionInterface/eCubPerceptionInterface.h>

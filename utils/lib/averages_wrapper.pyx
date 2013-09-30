from libcpp cimport bool

from numpy cimport ndarray
from numpy import empty, uint8

cimport caverages

def arit(ndarray[double, mode="c"] longitude not None,
        ndarray[double, mode="c"] latitude not None,
        ndarray[double, ndim=2, mode="fortran"] field not None,
        mask):
    cdef int n_long = len(longitude)
    cdef int n_lat = len(latitude)
    cdef ndarray[char, ndim=2, mode="fortran"] mask2 = mask.view(dtype=uint8)
    cdef double r
    caverages.averages_arit(n_long, n_lat, &longitude[0], &latitude[0],
        &field[0, 0], <bool*> (&mask2[0, 0]), &r)
    return r

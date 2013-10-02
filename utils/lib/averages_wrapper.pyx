from numpy cimport ndarray
from numpy import empty

cimport caverages

def arit(ndarray[double, mode="c"] longitude not None,
        ndarray[double, mode="c"] latitude not None,
        ndarray[double, ndim=2, mode="c"] field not None,
        ndarray[int, ndim=2, mode="c"] mask not None):
    cdef int n_long = len(longitude)
    cdef int n_lat = len(latitude)
    cdef double r
    caverages.averages_arit(n_long, n_lat, &longitude[0], &latitude[0],
        &field[0, 0], &mask[0, 0], &r)
    return r

def rmean(ndarray[double, mode="c"] longitude not None,
        ndarray[double, mode="c"] latitude not None,
        ndarray[double, ndim=2, mode="c"] field not None,
        ndarray[int, ndim=2, mode="c"] mask not None,
        double r):
    cdef int n_long = len(longitude)
    cdef int n_lat = len(latitude)
    cdef double m
    caverages.averages_rmean(n_long, n_lat, &longitude[0], &latitude[0],
        &field[0, 0], &mask[0, 0], r, &m)
    return m

def smean(ndarray[double, mode="c"] longitude not None,
        ndarray[double, mode="c"] latitude not None,
        ndarray[double, ndim=2, mode="c"] field not None,
        ndarray[int, ndim=2, mode="c"] mask not None,
        double s):
    cdef int n_long = len(longitude)
    cdef int n_lat = len(latitude)
    cdef double m
    caverages.averages_smean(n_long, n_lat, &longitude[0], &latitude[0],
        &field[0, 0], &mask[0, 0], s, &m)
    return m

def arit2(ndarray[double, mode="c"] longitude not None,
        ndarray[double, mode="c"] latitude not None,
        ndarray[double, ndim=2, mode="c"] field not None,
        ndarray[int, ndim=2, mode="c"] mask not None):
    cdef int n_long = len(longitude)
    cdef int n_lat = len(latitude)
    cdef double r
    caverages.averages_arit2(n_long, n_lat, &longitude[0], &latitude[0],
        &field[0, 0], &mask[0, 0], &r)
    return r

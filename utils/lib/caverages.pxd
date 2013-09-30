from libcpp cimport bool

cdef extern from "caverages.h":

    void averages_arit(int n_long, int n_lat, double *longitude,
            double *latitude, double *field, bool *mask, double *r)

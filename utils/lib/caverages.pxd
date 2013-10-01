cdef extern from "caverages.h":

    void averages_arit(int n_long, int n_lat, double *longitude,
            double *latitude, double *field, int *mask, double *r)
    void averages_rmean(int n_long, int n_lat, double *longitude,
            double *latitude, double *field, int *mask, double r, double *m)
    void averages_arit2(int n_long, int n_lat, double *longitude,
            double *latitude, double *field, int *mask, double *r)

#ifndef _caverages_h
#define _caverages_h

#if defined (__cplusplus)
extern "C" {
#endif


void averages_arit(int n_long, int n_lat, double *longitude, double *latitude,
        double *field, int *mask, double *r);
void averages_rmean(int n_long, int n_lat, double *longitude, double *latitude,
        double *field, int *mask, double r, double *m);
void averages_smean(int n_long, int n_lat, double *longitude, double *latitude,
        double *field, int *mask, double s, double *m);
void averages_arit2(int n_long, int n_lat, double *longitude, double *latitude,
        double *field, int *mask, double *r);

#if defined (__cplusplus)
}
#endif

#endif

#ifndef _caverages_h
#define _caverages_h

#include <stdbool.h>

#if defined (__cplusplus)
extern "C" {
#endif


void averages_arit(int n_long, int n_lat, double *longitude, double *latitude,
        double *field, bool *mask, double *r);

#if defined (__cplusplus)
}
#endif

#endif

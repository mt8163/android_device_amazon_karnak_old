/* Credits to k4y0z. This fixes the missing symbol in libGLES_Mali.so to avoid
 * bootloop.*/
#include <math.h>

extern "C" long long __aeabi_d2lz(double var) { return (long long)floor(var); }

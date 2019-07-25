#include <math.h>


extern "C" long long __aeabi_d2lz(double var) {
    return (long long)floor(var);
}

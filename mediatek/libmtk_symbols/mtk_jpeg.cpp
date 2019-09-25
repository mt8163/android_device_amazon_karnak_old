#include <errno.h>
#include <setjmp.h>
#include <stdio.h>

//extern "C" {
//#include "jpeglib.h"
//}

extern "C" {
void jpeg_std_error_MTK(){};
void jpeg_CreateCompress_MTK(){};
void jpeg_CreateDecompress_MTK(){};
void jpeg_destroy_compress_MTK(){};
void jpeg_destroy_decompress_MTK(){};
void jpeg_set_defaults_MTK(){};
void jpeg_set_quality_MTK(){};
void jpeg_start_compress_MTK(){};
void jpeg_finish_compress_MTK(){};
void jpeg_write_raw_data_MTK(){};
void jpeg_finish_decompress_MTK(){};
void jpeg_mem_dest_MTK(){};
}

#include <stdio.h>
#include <log/log.h>
//extern "C" void lab126_log_write(void) {}

extern "C" int lab126_log_write(int loglevel, uint32_t * b, const char * logtag, const char * fmt, ...) {
	va_list args;
	va_start(args, fmt);
	//printf("%s: ", logtag, b);
	//vprintf(fmt, args);
	LOG_PRI_VA(loglevel, logtag, fmt, args);
	va_end(args);
	return 0;
}

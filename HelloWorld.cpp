#include "mbed.h"

BufferedSerial serial(USBTX, USBRX, 115200);
FILE* pc;

int main()
{
	pc = fdopen(&serial, "w");
	while(true)
	{
		fprintf(pc, "Hello world from mbed-cmake!");
		ThisThread::sleep_for(1s);
	}
}
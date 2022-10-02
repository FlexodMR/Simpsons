
                             S3TC Library
                Volume 11 Software for S3 Incorporated.
                             Seth Sowerby


Contents
--------

Readme.txt		This document.

S3TC_Lib.doc		Document describing the S3TC library interface and it's use.

Include\S3_intrf.h	Header file for S3TC Library. Include this file to define 
					the S3TC interface.

Lib\s3tc.lib		S3TC library for Win32.

Lib\libS3TC.a		S3TC library for Linux. This has been tested under RedHat
			Linux 6.1.

Lib\S3TCLibPPC.o	S3TC library for Apple Macs with PowerPC processors. This
			has not yet been tested.

S3TCTest		Example application for all supported platforms with makefiles
			for Linux/gcc (S3TCTest.release & S3TCTest.debug), 
			MacOS/MPW (MacS3TCTest.make & MacS3TCTest.debug.make) and
			Windows/Visual C++ (S3TCTest.dsw).

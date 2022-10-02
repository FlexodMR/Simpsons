/* 

This code is provided for educational purposes only. YMMV.

This reads in a file and writes out to STDIN the hex representation of the
contents of the file in standard C \x?? format.

*/

#include<stdio.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>

int infile;

int outtype=0;
/*    0 = hex
    1 = oct
    2 = dec        */

char Usage[]="bin2hex [-hobd] filename ...\n";

unsigned char work[1024];
char output[100];
char tempwork[50];
char outformat[3][6]={"\\x%02x","",""};

void main(int argc, char **argv) {
    int c, x;

    int optind = 1;
    if(optind==argc) {fprintf(stderr, Usage); exit(-1);}
    while(optind<argc) {
        if((infile=open(argv[optind],O_RDONLY | O_BINARY))==-1) {
            perror(argv[optind]);
            exit(-2);         
        }
        c=1;
        memset(output,0,100);
        while(c>0) {
            c=read(infile,(void *)&work,1024);
            if(c>0) {
                for(x=0;x<c;x++) {
                    sprintf(tempwork,outformat[outtype],work[x]);
                    strcat(output,tempwork);
                    if(strlen(output)>70) {
                        printf("\"%s\"\n",output);
                        memset(output,0,100);
                    }
                }
            }

        }
        close(infile);
        printf("\"%s\";\n\n",output);
        memset(output,0,100);
        optind++;

    }
}


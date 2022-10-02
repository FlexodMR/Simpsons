#if defined(__LANGUAGE_C_PLUS_PLUS)||defined(__cplusplus)||defined(c_plusplus)
extern "C" {
#endif

int DIS_dmaSend(int chan, int chcr, char *options);
int DIS_sceDmaSend(sceDmaChan *d, void *tag, char *options);
int DIS_sceDmaSendN(sceDmaChan *d, void *tag, u_int numqwords, char *options);

#if defined(__LANGUAGE_C_PLUS_PLUS)||defined(__cplusplus)||defined(c_plusplus)
}
#endif

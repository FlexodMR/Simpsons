// cosntruction rules for pure3d schema parser
#ifdef __cplusplus
extern "C"
{
#endif

void ConstructParam(char*);
void ConstructProperty(char *, unsigned nParams);
void ConstructPropertyBlock(unsigned nProperty);
void ConstructMember(char*, unsigned hasProperties);
void ConstructObject(char* type, char* name, unsigned nMembers, unsigned hasProperties);
void ConstructObjectList(unsigned nObjects);
void ConstructFilePropertyBlock(unsigned nProperty);

#ifdef __cplusplus
}
#endif

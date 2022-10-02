#if !defined(VERTEX_CACHE_H)
#define VERTEX_CACHE_H


#include "tlTable.hpp"

class tlTsVertexCache
{

public:

  tlTsVertexCache(int size);
  tlTsVertexCache();
  ~tlTsVertexCache();

  bool InCache(unsigned long entry);
  unsigned long AddEntry(unsigned long entry);
  void Clear();

  void Copy(tlTsVertexCache* inVcache);
  unsigned long  At(int index);
  void Set(int index, unsigned long value);
  float CalcNumHitsOfStrip( tlTable< unsigned long > &strip );
  void UpdateCacheFromStrip( tlTable< unsigned long > strip );
  float CalcNumHitsOfStripEX( tlTable< unsigned long > &strip );

private:

  unsigned long *entries;
  int numEntries;

};

#endif


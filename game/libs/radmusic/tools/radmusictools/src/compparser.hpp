// composition.hpp

#include <radmusic/schema.hpp>

namespace radmusic {

struct struct_performance;
struct Composition;

ods::comp parse_comp(
    ods::pointer & ptr_project,
    const void * p_data,
    unsigned int size );

const char * parse_comp_get_last_error( void );

} // namespaceradmusic
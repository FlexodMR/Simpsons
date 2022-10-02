//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef PROJECT_HPP
#define PROJECT_HPP

#include "obUtilString.hpp"
#include "obVector.hpp"
#include "obStream.hpp"
#include "obClass.hpp"

class obProject : public obObject
{
    public:
               
        obProject( void );        
        ~obProject( void );
        
        bool LoadText( obDataStream & stream );
        void SaveText( obDataStream & stream );    

        const char * GetLastError( void );
                
        // Classes
                            
        unsigned int GetNumClasses( void );
        obClass * GetClassAt( unsigned int i );
        void AddClass( obClass * pObClass );
        void RemoveClass( obClass * pObClass );
        void RemoveAllClasses( void );       
        obClass * FindClass( const char * pName );
        
        // Instance
       
        unsigned int GetNumInstances( void );
        obClassInstance * GetInstanceAt( unsigned int i );                    
        void AddInstance( obClassInstance * pInstance );
        void RemoveInstance( obClassInstance * pInstance );
        void RemoveAllInstances( void );
        obClassInstance * FindInstance( const char * pName );
            
    private:
    
        obVector< obClass * > m_ObVector_Classes;
        obVector< obClassInstance * > m_ObVector_Instances;
        
        obUtilString m_LastError;
public:
    bool IsModified(void);
};

#endif // NAMESPACE_HPP
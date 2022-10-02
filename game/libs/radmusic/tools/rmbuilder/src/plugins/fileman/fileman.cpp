#include <pch.hpp>
#include <ods/parser.hpp>
#include <res/resource.h>
#include <plugins/fileman/fileman.h>
#include <plugins/fileman/filetreectrl.h>
#include <plugins/fileman/filelistwnd.h>
#include <plugins/fileman/filesplitterwnd.h>
#include <plugins/dataman/dataman.h>
#include <plugins/windowman/windowman.h>
#include <plugins/buildman/buildman.h>
#include <plugins/log/log.h>
#include <raddebug.hpp>
#include <util/path.h>
#include <vector>
#include <algorithm>


#include <plugins/editor/editor.h> // HACK
#include <plugins/performance/performance.h>

static const char * EDITOR      = "root/plugins/editor";
static const char * PLUGIN_NAME = "root/plugins/fileman";
static const char * WINDOW_NAME = "source_files";

static const char * DATAMAN     = "root/plugins/dataman";
static const char * BUILDMAN    = "root/plugins/buildman";
static const char * PERFORMANCE = "root/plugins/performance";

#define BKGD_COLOR RGB( 50, 50, 50 )

#define ID_TREE_DELETE_ITEM ( 100 )
#define ID_TREE_RENAME_ITEM ( 101 )
#define ID_TREE_NEW_FOLDER  ( 102 )
#define ID_TREE_COLLECT_FROM_LOCAL_DRIVE ( 103 )

#define ID_LIST_DELETE_ITEM ( 200 )
#define ID_LIST_RENAME_ITEM ( 201 )
#define ID_LIST_NEW_FOLDER ( 202 )
#define ID_LIST_ITEM_EDIT  ( 203 )
#define ID_LIST_ITEM_TEST ( 204 )

#define ID_DEAD 5000

//
// globals
//

static plugin_fx * g_p_plugin_send;

void source_file_plugin_fx( plugin_msg * p_m );

static void destroy_window( );
static void create_new_window( );
static void load_window( );
static void refresh_window( );

class CFileWnd : public CWnd
{
    public:
    
	    CFileWnd( );          
        virtual ~CFileWnd();
               
        void Refresh( void );
        void RefreshRecurse( const char * p_dir, HTREEITEM hParent );       
        void OnDropFile( const char * p_file, int x, int y );
        
        CFileTreeCtrl * m_pTreeCtrl;
        CFileListWnd * m_pListCtrl;
        CFileSplitterWnd m_Splitter;

    protected:

	    DECLARE_MESSAGE_MAP()
    	
    	
	    int  OnCreate(LPCREATESTRUCT lpCreateStruct);
	    void OnDestroy( );
	    void OnSize(UINT nType, int cx, int cy);
	    void OnGetInfoTip( NMHDR *,LRESULT * );
        void OnTreeDeleteItem(  );	
        void OnTreeRenameItem(  );
        void OnTreeNewFolder(   );
        void OnListRenameItem(  );
        void OnListDeleteItem(  );
        void OnListNewFolder(   ); 
        void OnListItemEdit( ); 
        void OnListItemTest( );         	
        virtual BOOL OnNotify(WPARAM wParam, LPARAM lParam, LRESULT* pResult);

} * g_pFileWnd;

void fileman_plugin_fx( plugin_msg * p_m )
{
    switch( p_m->id )
    {
        case plugin_initialize:
        {
            plugin_initialize_params* p = (plugin_initialize_params*) p_m;
            g_p_plugin_send = p->p_fx;            
            break;
        }
        case plugin_terminate:
        {
            g_p_plugin_send = 0;
            break;
        }
        case plugin_query_name:
        {
            plugin_query_name_params* p = (plugin_query_name_params*) p_m;
            strcpy( p->name, PLUGIN_NAME );
            break;
        }
        case plugin_drop_file:
        {        
            plugin_drop_file_params * p = (plugin_drop_file_params*) p_m;

            g_pFileWnd->OnDropFile( p->file_path, p->x, p->y );

            break;
        }
        case project_new:
        {
            destroy_window( );
            create_new_window( );
            refresh_window( );                    
            break;
        }
        case project_destroy:
        {
            destroy_window( );
            break;
        }
        case project_load:
        {
            destroy_window( );
            load_window( );
            refresh_window( );               
            break;
        }
        case project_save:
        {
            break;
        }        
        case project_refresh:
        {
            refresh_window( );       
            break;
        }
    }
}

void destroy_window( )
{
    if ( g_pFileWnd != 0 )
    {        
        ::DestroyWindow( g_pFileWnd->m_hWnd );
        delete g_pFileWnd;
        g_pFileWnd = 0;
        
        windowman_destroy_frame_params d;
        d.hdr.id = windowman_destroy_frame;
        d.hdr.size = sizeof (d );
        strcpy( d.hdr.target, "root/plugins/windowman" );
        strcpy( d.instance, WINDOW_NAME );
        strcpy( d.plugin, PLUGIN_NAME );
        
        g_p_plugin_send( & d.hdr );
    }
}

void create_new_window( )
{
    windowman_create_frame_params d;
    d.hdr.id = windowman_create_frame;
    d.hdr.size = sizeof ( d );
    strcpy( d.hdr.target, "root/plugins/windowman" );
    strcpy( d.instance,   WINDOW_NAME );
    strcpy( d.plugin,     PLUGIN_NAME );
    d.closeable = false;
    
    g_p_plugin_send( & d.hdr );
    
    rAssert( 0 == g_pFileWnd );
    
    g_pFileWnd = new CFileWnd( );
    
    CWnd parent;
    parent.Attach( d.hWnd );
    
    RECT client;
    ::GetClientRect( d.hWnd, & client );
    
    BOOL ok = g_pFileWnd->Create(
        AfxRegisterWndClass(
            CS_DBLCLKS | CS_HREDRAW | CS_VREDRAW,
            AfxGetApp( )->LoadStandardCursor( IDC_ARROW ),
            (HBRUSH) ::GetStockObject( NULL_BRUSH ),
            0 ),
        "",
        WS_CLIPSIBLINGS | WS_CLIPCHILDREN | WS_CHILD | WS_VISIBLE,
        CRect( & client ),
        & parent,
        0,
        NULL );
        
    rAssert( ok );

    parent.Detach( );
}

void load_window( )
{
    windowman_restore_frame_params d;
    d.hdr.id = windowman_restore_frame;
    d.hdr.size = sizeof ( d );
    strcpy( d.hdr.target, "root/plugins/windowman" );
    strcpy( d.instance,   WINDOW_NAME );
    strcpy( d.plugin,     PLUGIN_NAME );
    
    g_p_plugin_send( & d.hdr );
    
    rAssert( 0 == g_pFileWnd );
    
    g_pFileWnd = new CFileWnd( );
    
    CWnd parent;
    parent.Attach( d.hWnd );
    
    RECT client;
    ::GetClientRect( d.hWnd, & client );
        
    BOOL ok = g_pFileWnd->Create(
        AfxRegisterWndClass(
            CS_DBLCLKS | CS_HREDRAW | CS_VREDRAW,
            AfxGetApp( )->LoadStandardCursor( IDC_ARROW ),
            (HBRUSH) ::GetStockObject( NULL_BRUSH ),
            0 ),
        "",
        WS_CLIPSIBLINGS | WS_CLIPCHILDREN | WS_CHILD | WS_VISIBLE,
        CRect( & client ),
        & parent,
        0,
        NULL );
        
    rAssert( ok );

    parent.Detach( );
}

void refresh_window( )
{
    rAssert( g_pFileWnd );
    g_pFileWnd->Refresh( );
}  

UINT FindExtensionIcon( const char * p_file_path );

HTREEITEM get_root_item( HWND hTreeCtrl )
{
    HTREEITEM hItem = TreeView_GetRoot( hTreeCtrl );
    rAssert( 0 != hItem );
    
    return hItem;
}

bool is_root_item( HWND hTreeCtrl, HTREEITEM hItem )
{
    return hItem == get_root_item( hTreeCtrl );
}

void get_item_text(
    HWND hTreeCtrl,
    HTREEITEM hItem,
    char * p_test,
    unsigned int max )
{        
    TVITEM t;
    t.mask = TVIF_TEXT | TVIF_HANDLE;
    t.pszText = p_test;
    t.cchTextMax = max;
    t.hItem = hItem;
    
    TreeView_GetItem( hTreeCtrl, & t );
}

void set_item_text(
    HWND hTreeCtrl,
    HTREEITEM hItem,
    const char * p_text )
{
    TVITEM t;
    t.mask = TVIF_TEXT | TVIF_HANDLE;
    t.pszText = (char*) p_text;
    t.hItem = hItem;
    
    TreeView_SetItem( hTreeCtrl, & t );
}
    

HTREEITEM find_child_item(
    HWND hTreeCtrl,
    HTREEITEM hParent,
    const char * p_child_name )
{
    if ( hParent == 0 )
    {
        rAssert( strcmp( p_child_name, "root" ) == 0 );
        return get_root_item( hTreeCtrl );
    }
    
    HTREEITEM hItem = TreeView_GetChild( hTreeCtrl, hParent );
    
    char name[ 256 ];
    
    while( hItem != 0 )
    {
        get_item_text( hTreeCtrl, hItem, name, 256 );
        
        if ( strcmp( name, p_child_name ) == 0)
        {
            return hItem;
        }
        
        hItem = TreeView_GetNextSibling( hTreeCtrl, hItem );
    }
    
    return 0;
}

HTREEITEM find_path_item(
    HWND hTreeCtrl,
    HTREEITEM hItem,
    const char * p_item_path )
{    
    char name[ 256 ];
    
    const char * p_path = p_item_path;
    char * p_name = name;
    
    while( 1 )
    {
        if ( *p_path == PATH_SEP_CHAR || *p_path == 0 )
        {
            *p_name = 0;
            
            rDebugPrintf( "%s", name );
            
            hItem = find_child_item( hTreeCtrl, hItem, name );
            
            if ( hItem == 0 )
            {
                return 0;
            }
            
            if ( *p_path == 0 )
            {
                break;
            }
            
            p_name = name;
        }
        else
        {
            *p_name = *p_path;
            p_name++;                    
        }

        p_path++;
    }
    
    return hItem;
};


void assemble_tree_item_data_path(
    HWND hTreeCtrl,
    HTREEITEM hItem,
    char * p_item_path,
    unsigned int max_chars )
{
    char parent[ 256 ];
    char child[ 256 ];
    char temp[ 256 ];
    strcpy( parent, "" );    
        
    TVITEM t;
    t.mask = TVIF_TEXT | TVIF_HANDLE;
    t.pszText = temp;
    t.cchTextMax = 256;
    t.hItem = hItem;
               
    while( 1 )
    {
        TreeView_GetItem( hTreeCtrl, & t );
        t.hItem = TreeView_GetParent( hTreeCtrl, t.hItem );
        
        if ( t.hItem == 0  )
        {
            sprintf( child, "%s%s", temp, parent );
            break;
        }
        
        sprintf( child, "/directories/?[name==\"%s\"]%s", temp, parent );
        strcpy( parent, child );
    }
        
    sprintf( p_item_path, "root/fileman/%s", child );
}

void assemble_tree_item_file_path(
    HWND hTreeCtrl,
    HTREEITEM hItem,
    char * p_item_path,
    unsigned int max_chars )
{
    char parent[ 256 ];
    char temp[ 256 ];
    strcpy( parent, "" );    
        
    TVITEM t;
    t.mask = TVIF_TEXT | TVIF_HANDLE;
    t.pszText = temp;
    t.cchTextMax = 256;
    t.hItem = hItem;
               
    while( 1 )
    {
        TreeView_GetItem( hTreeCtrl, & t );
        t.hItem = TreeView_GetParent( hTreeCtrl, t.hItem );
        
        if ( t.hItem == 0  )
        {
            strcpy( p_item_path, parent );
            break;
        }
        
        sprintf( p_item_path, "%s/%s", temp, parent );
        strcpy( parent, p_item_path );
    }
}

void delete_current_selection( HWND hTreeView )
{        
    HTREEITEM hItem =
        TreeView_GetSelection(
            hTreeView );
        
    if( 0 != hItem )
    {          
        dataman_remove_params d;
        d.hdr.id = dataman_remove;
        d.hdr.size = sizeof( d );
        strcpy( d.hdr.target, DATAMAN );
        
        assemble_tree_item_data_path(
            hTreeView,
            hItem,
            d.entry,
            256 );
        
        g_p_plugin_send( & d.hdr );
        
        rAssert( d.ok );
        
        TreeView_DeleteItem( hTreeView, hItem );
    }
}

void update_list_view( void  )
{
    g_pFileWnd->m_pListCtrl->DeleteAllItems( );
    
    HTREEITEM hItem = TreeView_GetSelection(
        g_pFileWnd->m_pTreeCtrl->m_hWnd );
        
    if ( hItem )
    {        
        dataman_query_collection_size_params d;
        d.hdr.id = dataman_query_collection_size;
        d.hdr.size = sizeof( d );
        sprintf( d.hdr.target, DATAMAN );
        
        assemble_tree_item_data_path(
            g_pFileWnd->m_pTreeCtrl->m_hWnd,
            hItem,
            d.entry,
            256 ); 
            
        strcat( d.entry, "/files" );               
        
        g_p_plugin_send( & d.hdr );
        rAssert( d.ok );
        
        dataman_get_params dg;
        dg.hdr.id = dataman_get;
        dg.hdr.size = sizeof( dg );
        strcpy( dg.hdr.target, DATAMAN );
                    
        for( unsigned int i = 0; i < d.collection_size; i ++ )
        {
            sprintf( dg.entry, "%s/%u", d.entry, i );
            g_p_plugin_send( & dg.hdr );
            rAssert( dg.ok );
            
            char no_quotes[ 256 ];
            
            Parser parser( dg.value, strlen(dg.value ) );
            parser.GetQuotedString( no_quotes, 256 );
            
            g_pFileWnd->m_pListCtrl->InsertItem(
                ListView_GetItemCount( g_pFileWnd->m_pListCtrl->m_hWnd ),
                no_quotes,
                FindExtensionIcon( no_quotes ));

        }
    }        
}

bool get_selected_item_file_path( CFileWnd * p_fv, char * s  )
{
    HTREEITEM hItem = p_fv->m_pTreeCtrl->GetSelectedItem( );
    
    if ( hItem )
    {
            
        POSITION pos = p_fv->m_pListCtrl->GetFirstSelectedItemPosition( );
        
        if ( pos )
        {
            UINT item = p_fv->m_pListCtrl->GetNextSelectedItem( pos );
            
            if ( item != 0xFFFFFFFF )
            {
                char path[ 256 ];
                char fname[ 256 ];     
                            
                assemble_tree_item_file_path( p_fv->m_pTreeCtrl->m_hWnd, hItem, path, 256 );
                
                p_fv->m_pListCtrl->GetItemText( item, 0, fname, 256 );                
              
                strncpy( s, path, 256 );
                strncat( s, fname, 256 );
                
                return true;
            }
        }        
    }
    
    return false;
}
        
CFileWnd::CFileWnd( )
{
}

CFileWnd::~CFileWnd()
{
    
}

BEGIN_MESSAGE_MAP(CFileWnd, CWnd)
	ON_WM_CREATE()
	ON_WM_DESTROY()
	ON_WM_SIZE()
    ON_COMMAND(ID_TREE_DELETE_ITEM, OnTreeDeleteItem )	
    ON_COMMAND(ID_TREE_NEW_FOLDER,  OnTreeNewFolder )
    ON_COMMAND(ID_TREE_RENAME_ITEM, OnTreeRenameItem )
    ON_COMMAND(ID_LIST_RENAME_ITEM, OnListRenameItem )
    ON_COMMAND(ID_LIST_DELETE_ITEM, OnListDeleteItem )
    ON_COMMAND(ID_LIST_NEW_FOLDER,  OnListNewFolder ) 
    ON_COMMAND(ID_LIST_ITEM_EDIT,   OnListItemEdit )    
    ON_COMMAND(ID_LIST_ITEM_TEST,   OnListItemTest )   
    ON_WM_CTLCOLOR()
END_MESSAGE_MAP()

struct ExtensionInfo
{
    char * pExtension;
    char * pDescription;
    UINT bitmap_index;
} g_Extensions[] =
{
    { ".wav", "Wave File", 2 },
    { ".txt", "radmusic Script File", 1 },
    { ".rmb", "radmusic Builder Project File", 5 } };
    
unsigned int g_NumExtensions = sizeof( g_Extensions ) / sizeof (ExtensionInfo );

UINT FindExtensionIcon( const char * p_file_path )
{
    char ext[ 256 ];
    ::_splitpath( p_file_path, 0, 0, 0, ext );
    
    for( unsigned int i = 0; i < g_NumExtensions; i ++ )
    {
        if( strcmp( ext, g_Extensions[ i ].pExtension ) == 0 )
        {
            return g_Extensions[ i ].bitmap_index;
        }
    }
    
    return 4;
}

char * FindExtensionDescription( const char * p_file_path )
{
    char ext[ 256 ];
    ::_splitpath( p_file_path, 0, 0, 0, ext );
    
    for( unsigned int i = 0; i < g_NumExtensions; i ++ )
    {
        if( strcmp( ext, g_Extensions[ i ].pExtension ) == 0 )
        {
            return g_Extensions[ i ].pDescription;
        }
    }
    
    return "Unrecognized File Type";
    
}

int CFileWnd::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
	if (CWnd::OnCreate(lpCreateStruct) == -1)
		return -1;

    BOOL ok = m_Splitter.CreateStatic(
        this, 1, 2  );
    
    ok = m_Splitter.CreateView(
        0, 0, RUNTIME_CLASS( CFileTreeCtrl ), CSize( 100, 0 ), NULL );
        
    ASSERT( ok );
        
    ok = m_Splitter.CreateView(
        0, 1, RUNTIME_CLASS( CFileListWnd ), CSize( 0, 0 ), NULL );

    ASSERT( ok );
            
    m_pTreeCtrl= (CFileTreeCtrl*) m_Splitter.GetPane( 0, 0 );
    m_pListCtrl= (CFileListWnd*) m_Splitter.GetPane( 0, 1 );      
            		
    /* m_pTreeCtrl->Create(
        TVS_HASBUTTONS | TVS_SHOWSELALWAYS | TVS_INFOTIP | WS_VISIBLE,
        CRect( 0, 0, 0, 0 ),
        & m_Splitter, 0 );
        
    m_pTreeCtrl2->Create(
        TVS_HASBUTTONS | TVS_SHOWSELALWAYS | TVS_INFOTIP | WS_VISIBLE,
        CRect( 0, 0, 0, 0 ),
        & m_Splitter, 0 );  */      
    
        
   CImageList i;
   CImageList j;
    
   ok = i.Create(
        16,
        15,
        ILC_COLOR16,
        16,
        16 );
        
   ok = j.Create(
        16,
        15,
        ILC_COLOR16,
        16,
        16 );        
        
       
    CBitmap b;
    b.LoadBitmap( IDB_FILEVIEW );
    
    CBitmap c;
    c.LoadBitmap( IDB_FILEVIEW );    
    
    i.Add( & b, RGB( 192, 192, 192 )  );
    j.Add( & c, RGB( 192, 192, 192 )  );
    
    m_pTreeCtrl->SetImageList( & i, TVSIL_NORMAL );
    m_pListCtrl->SetImageList( & j, LVSIL_SMALL );
    
    i.Detach( );
    j.Detach( );
   
       
	return 0;
}

void CFileWnd::OnDestroy( )
{    
    m_Splitter.DestroyWindow( );
    
    CWnd::OnDestroy( );
}


void CFileWnd::OnSize(UINT nType, int cx, int cy) 
{
    CRect client;
    GetClientRect( & client );
    
    m_Splitter.MoveWindow( client.left, client.top, client.Width( ), client.Height( ), TRUE );
  
}

void CFileWnd::Refresh( void  )
{
    TreeView_DeleteAllItems( m_pTreeCtrl->m_hWnd );

    TVINSERTSTRUCT is;
        
    is.hInsertAfter = TVI_LAST;
    is.hParent      = TVI_ROOT;
    is.item.mask    = TVIF_TEXT | TVIF_IMAGE | TVIF_SELECTEDIMAGE;
    is.item.pszText = "root";
    is.item.iImage  = 3;
    is.item.iSelectedImage = 3;          
    HTREEITEM hTreeItem = TreeView_InsertItem( m_pTreeCtrl->m_hWnd, & is ); 
    ASSERT( hTreeItem );    
    
    RefreshRecurse( "root/fileman/root/directories" , hTreeItem );
    
    TreeView_Expand( m_pTreeCtrl->m_hWnd, hTreeItem, TVE_EXPAND );
    
    update_list_view( );
}

void CFileWnd::RefreshRecurse(
    const char * p_dir,
    HTREEITEM hParent )
{
    dataman_query_collection_size_params d;
    
    d.hdr.id = dataman_query_collection_size;
    d.hdr.size = sizeof( d );
    strcpy( d.hdr.target, DATAMAN );
    
    sprintf( d.entry, p_dir );    
    
    g_p_plugin_send( & d.hdr );
    rAssert( d.ok );
    
    for( unsigned int sd = 0; sd < d.collection_size; sd ++ )
    {
        dataman_get_params dg;
        
        dg.hdr.id = dataman_get;
        dg.hdr.size = sizeof( dg );
        sprintf( dg.hdr.target, DATAMAN );
        sprintf( dg.entry, "%s/%u/name", p_dir, sd );
        g_p_plugin_send( & dg.hdr );
        rAssert( dg.ok );
        
        Parser p( dg.value, strlen( dg.value) );
        
        char no_quotes[ 256 ];
        p.GetQuotedString( no_quotes, 256 );
    
        HTREEITEM hItem = m_pTreeCtrl->InsertItem(
            no_quotes, 0, 0, hParent );           
        
        char next[ 256 ];
        sprintf( next, "%s/%u/directories", p_dir, sd );    
        RefreshRecurse( next, hItem );
    }
}
        


void CFileWnd::OnGetInfoTip( NMHDR * pHdr, LRESULT * p_result)
{
    NMTVGETINFOTIP * pInfoTip = (NMTVGETINFOTIP*)pHdr;

    CString filename = m_pTreeCtrl->GetItemText( pInfoTip->hItem );
    
    strcpy( pInfoTip->pszText, FindExtensionDescription( filename ) );
}

void CFileWnd::OnDropFile(
    const char * p_file_name,
    int x,
    int y )
{
    UINT uFlags;
    POINT point;
    point.x = x;
    point.y = y;
    
    HTREEITEM hItem = m_pTreeCtrl->HitTest(point, &uFlags);

    if ((hItem != NULL) && (TVHT_ONITEM & uFlags))
    {
        char filename[ 256 ];
        char fileext[ 256 ];
        char filenameext[ 256 ];
        
        _splitpath( p_file_name, 0, 0, filename, fileext );
        _makepath( filenameext, 0, 0, filename, fileext );
        
        m_pTreeCtrl->SelectItem( hItem );

        dataman_add_params d;
        d.hdr.id = dataman_add;
        d.hdr.size = sizeof( d );
        strcpy( d.hdr.target, DATAMAN );
        assemble_tree_item_data_path( m_pTreeCtrl->m_hWnd, hItem, d.array_name, 256 );       
        strcat( d.array_name, "/files" );        
        sprintf( d.value, "\"%s\"", filenameext );
        g_p_plugin_send( & d.hdr );        
        rAssert( d.ok );
        
        update_list_view( );
    }

}    

BOOL CFileWnd::OnNotify(WPARAM wParam, LPARAM lParam, LRESULT* pResult)
{
    NMHDR * pHdr = (NMHDR*) lParam;
    
    if ( pHdr->hwndFrom == m_pTreeCtrl->m_hWnd )
    {
        if ( pHdr->code == NM_RCLICK )
        {
            CPoint cursorPos;
            CPoint clientPos;            
            ::GetCursorPos( & cursorPos );
            
            clientPos = cursorPos;
            ::ScreenToClient( m_pTreeCtrl->m_hWnd, & clientPos );

            UINT uFlags;
            HTREEITEM hItem = m_pTreeCtrl->HitTest(clientPos, &uFlags);

            if ((hItem != NULL) && (TVHT_ONITEM & uFlags))
            {
                TreeView_SelectItem( m_pTreeCtrl->m_hWnd, hItem );

                HMENU hMenuNew   = CreateMenu( );
                AppendMenu( hMenuNew, MF_STRING, ID_TREE_NEW_FOLDER, "&Folder" );
                HMENU hMenuPopup = CreatePopupMenu( );
                
                AppendMenu( hMenuPopup, MF_POPUP,  (UINT) hMenuNew, "&New" );
                AppendMenu( hMenuPopup, MF_SEPARATOR, 0, NULL );
                
                if ( hItem != get_root_item( m_pTreeCtrl->m_hWnd ) )
                {
                    AppendMenu( hMenuPopup, MF_STRING, ID_TREE_DELETE_ITEM, "&Delete" );            
                    AppendMenu( hMenuPopup, MF_STRING, ID_TREE_RENAME_ITEM, "&Rename" );
                    AppendMenu( hMenuPopup, MF_SEPARATOR, 0, NULL );                    
                }

                AppendMenu( hMenuPopup, MF_STRING, ID_DEAD, "&Collect From Local Drive" );            
                AppendMenu( hMenuPopup, MF_SEPARATOR, 0, NULL );                        
                AppendMenu( hMenuPopup, MF_STRING, ID_DEAD, "&Synchronize Perforce" );            
               
                ::TrackPopupMenu( hMenuPopup, 0, cursorPos.x, cursorPos.y, 0, this->m_hWnd, 0 );
                
                DestroyMenu( hMenuPopup );
                DestroyMenu( hMenuNew );
            }
            
        }
        else if ( pHdr->code == NM_KEYDOWN )
        {        
            NMKEY * pNmk = (NMKEY*) lParam;
            
            if ( VK_DELETE == pNmk->nVKey  )
            {
                delete_current_selection(
                    m_pTreeCtrl->m_hWnd );
            }
            else if ( VK_F2 == pNmk->nVKey )
            {
                TreeView_EditLabel(
                    m_pTreeCtrl->m_hWnd,
                    TreeView_GetSelection(
                        m_pTreeCtrl->m_hWnd ) );            
            }
        }
        else if ( pHdr->code == TVN_ENDLABELEDIT )
        {
            //::SetFocus( m_pTreeCtrl->m_hWnd );
            NMTVDISPINFO * p_n = (NMTVDISPINFO*) lParam;
            
            if ( 0 != p_n->item.pszText )
            {
                dataman_set_params d;
                d.hdr.id = dataman_set;
                d.hdr.size = sizeof( d );
                strcpy( d.hdr.target, DATAMAN );
                assemble_tree_item_data_path(
                    m_pTreeCtrl->m_hWnd,
                    p_n->item.hItem,
                    d.entry,
                    256 );
                sprintf( d.value, "[name=\"%s\"]", p_n->item.pszText );
                
                g_p_plugin_send( & d.hdr );
                rAssert( d.ok );
                
                g_pFileWnd->m_pTreeCtrl->SetItemText( p_n->item.hItem, p_n->item.pszText );
            }
            
            *pResult = FALSE;
        }
        else if ( pHdr->code == TVN_SELCHANGED )
        {
            HTREEITEM hItem = TreeView_GetSelection( m_pTreeCtrl->m_hWnd );
            
            if ( 0 != hItem )
            {
                update_list_view(  );
            }
        }                
    }
    else if ( pHdr->hwndFrom == m_pListCtrl->m_hWnd )
    {
        if ( pHdr->code == NM_RCLICK )
        {
            CPoint cursorPos;
            CPoint clientPos;            
            ::GetCursorPos( & cursorPos );
            
            clientPos = cursorPos;
            ::ScreenToClient( m_pListCtrl->m_hWnd, & clientPos );

            UINT uFlags;
            UINT item = m_pListCtrl->HitTest(clientPos, &uFlags);            
            
            if ( item != 0xFFFFFFFF && uFlags & ( LVHT_ONITEMICON | LVHT_ONITEMLABEL ) )
            {
                HTREEITEM hItem = m_pTreeCtrl->GetSelectedItem( );
                
                if ( hItem != 0 )
                {
                    char folder[ 256 ];
                    char file[ 256 ];
                    char extn[ 256 ];
                    
                    m_pListCtrl->GetItemText( item, 0, file, 256 );
                    get_item_text( m_pTreeCtrl->m_hWnd, hItem, folder, 256 );
                    
                    _splitpath( file, 0, 0, 0, extn );
                                                                                       
                    HMENU hMenuNew   = CreateMenu( );
                    AppendMenu( hMenuNew, MF_STRING, WM_USER, "&Composition" );
                    
                    HMENU hMenuPopup = CreatePopupMenu( );
                    AppendMenu( hMenuPopup,      MF_POPUP,  (UINT) hMenuNew, "&New" );
                    AppendMenu( hMenuPopup,      MF_SEPARATOR, 0, NULL );
                    AppendMenu( hMenuPopup, MF_STRING, ID_LIST_DELETE_ITEM, "&Delete" );            
                    AppendMenu( hMenuPopup, MF_STRING, ID_LIST_RENAME_ITEM, "&Rename" );
                    
                    if (strcmp( extn, ".txt" ) == 0 )
                    {
                        AppendMenu( hMenuPopup,      MF_SEPARATOR, 0, NULL );
                        AppendMenu( hMenuPopup, MF_STRING, ID_LIST_ITEM_EDIT, "&Edit" );
                        AppendMenu( hMenuPopup, MF_STRING, ID_LIST_ITEM_TEST, "&Test" );           
                    }
                    
                    ::TrackPopupMenu( hMenuPopup, 0, cursorPos.x, cursorPos.y, 0, this->m_hWnd, 0 );
                    
                    DestroyMenu( hMenuPopup );
                    DestroyMenu( hMenuNew );
                }
            }
        }
        else if ( pHdr->code == LVN_ENDLABELEDIT )
        {
            NMLVDISPINFO * pInfo = (NMLVDISPINFO*) pHdr;
            
            if ( pInfo->item.pszText != 0 )
            {
                char path[ 256 ];
                char old_name[ 256 ];
                
                m_pListCtrl->GetItemText( pInfo->item.iItem, 0, old_name, 256 );
                
                HTREEITEM hItem = TreeView_GetSelection( m_pTreeCtrl->m_hWnd );
                
                if ( hItem )
                {
                    assemble_tree_item_data_path(
                        m_pTreeCtrl->m_hWnd, hItem, path, 256 );
                                
                    dataman_set_params ds;
                    ds.hdr.id = dataman_set;
                    ds.hdr.size = sizeof( ds );
                    strcpy( ds.hdr.target, DATAMAN );
                    sprintf( ds.entry, "%s/files/?\"%s\"", path, old_name );
                    sprintf( ds.value, "\"%s\"", pInfo->item.pszText );
                    g_p_plugin_send( & ds.hdr );
                    rAssert( ds.ok );                    

                    LVITEM i;
                    i.mask = LVIF_IMAGE | LVIF_TEXT;
                    i.iItem = pInfo->item.iItem;
                    i.pszText = pInfo->item.pszText;
                    i.iImage = FindExtensionIcon( pInfo->item.pszText );
                    
                    BOOL ok = ListView_SetItem( m_pListCtrl->m_hWnd, & i );
                    
                    rAssert( ok );
                }                
            }
        }            
    }
    
    return TRUE;
}

void CFileWnd::OnTreeDeleteItem( void )
{
    delete_current_selection( m_pTreeCtrl->m_hWnd );
    
}
	
void CFileWnd::OnTreeRenameItem( void )
{
    HTREEITEM hTreeItem = TreeView_GetSelection( m_pTreeCtrl->m_hWnd );
    
    if ( hTreeItem != get_root_item( m_pTreeCtrl->m_hWnd ) )
    {        
        TreeView_EditLabel( m_pTreeCtrl->m_hWnd, hTreeItem );
    }
}

void CFileWnd::OnTreeNewFolder( void )
{
    HTREEITEM hParent = m_pTreeCtrl->GetSelectedItem( );
            
    if ( hParent != 0 )
    {
        dataman_add_params d;
        
        d.hdr.id = dataman_add;
        d.hdr.size = sizeof( d );
        strcpy( d.hdr.target, DATAMAN );
        
        assemble_tree_item_data_path( m_pTreeCtrl->m_hWnd, hParent, d.array_name, 256 );
        strcat( d.array_name, "/directories" );
                
        sprintf( d.value, "[name=\"new_folder\"]" );
        
        g_p_plugin_send( & d.hdr );
        rAssert( d.ok );
        
        HTREEITEM hNewItem = g_pFileWnd->m_pTreeCtrl->InsertItem(
            "new_folder",
            0,
            0,
            hParent );
        
        g_pFileWnd->m_pTreeCtrl->SelectItem( hNewItem );
        g_pFileWnd->m_pTreeCtrl->EditLabel( hNewItem );
    }
}

void CFileWnd::OnListRenameItem( void )
{           
    POSITION pos = m_pListCtrl->GetFirstSelectedItemPosition();
    
    if ( pos )
    {
        int nItem = m_pListCtrl->GetNextSelectedItem( pos );
        m_pListCtrl->EditLabel( nItem );
    }
}

void CFileWnd::OnListDeleteItem( void )
{
    HTREEITEM hItem = TreeView_GetSelection( m_pTreeCtrl->m_hWnd );
    
    if ( hItem )
    {
        char path[ 256 ];

        assemble_tree_item_data_path(
            m_pTreeCtrl->m_hWnd,
            hItem,
            path,
            256 );
                    
        POSITION pos = m_pListCtrl->GetFirstSelectedItemPosition();
        
        while ( pos )
        {
            int nItem = m_pListCtrl->GetNextSelectedItem( pos );
            
            char name[ 256 ];            
            m_pListCtrl->GetItemText( nItem, 0, name, 256 );
            
            dataman_remove_params d;
            d.hdr.id = dataman_remove;
            d.hdr.size = sizeof ( d );
            strcpy( d.hdr.target, DATAMAN );
            sprintf( d.entry, "%s/files/?\"%s\"", path, name );
            g_p_plugin_send( & d.hdr );
            
            rAssert( d.ok );
        }
        
        update_list_view( );
    }
}

void CFileWnd::OnListNewFolder( void )
{

}

void CFileWnd::OnListItemEdit( )
{
    char selected_item[ 256 ];
    
    if ( get_selected_item_file_path( this, selected_item  ) )
    {
        log(
            PLUGIN_NAME,
            "selected item edit: [%s]\n", selected_item );

        // HACK:
        char ext[ 256 ];
        _splitpath( selected_item, 0, 0, 0, ext );
        
        if (strcmp( ext, ".txt" ) == 0 )
        {                    
            editor_launch_params elp;
            elp.hdr.id = editor_launch;
            elp.hdr.size = sizeof( elp );  
            strcpy( elp.hdr.target, EDITOR );
            strcpy( elp.file, selected_item );
            g_p_plugin_send( & elp.hdr );
        }
    }
}  

void CFileWnd::OnListItemTest( )
{
    char selected_item[ 256 ];
    
    if ( get_selected_item_file_path( this, selected_item  ) )
    {
        log(
            PLUGIN_NAME,
            "selected item test: [%s]\n", selected_item );
            
        // HACK:
        char ext[ 256 ];
        _splitpath( selected_item, 0, 0, 0, ext );
        
        if (strcmp( ext, ".txt" ) == 0 )
        {                    
            performance_launch_params plp;
            plp.hdr.id = performance_launch;
            plp.hdr.size = sizeof( plp );  
            strcpy( plp.hdr.target, PERFORMANCE );
            strcpy( plp.file_name, selected_item );
            g_p_plugin_send( & plp.hdr );
        }            
            
          
    }  
}

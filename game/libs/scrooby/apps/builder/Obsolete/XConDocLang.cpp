/////////////////////////////////////////////////////////////////////////////
// XConDocLang.cpp : implementation of the language functionality

#pragma warning( disable : 4786 )

#include "StdAfx.h"
#include "XCon.h"
#include "XConDoc.h"
#include "xOverlay.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

static const TCHAR s_szTableStart[] = _T("PHRASE TABLE START");
static const TCHAR s_szPlatformPSX[] = _T("PSX");
static const TCHAR s_szPlatformPC[] = _T("WIN95");
static const TCHAR s_szWorkbook[] = _T("Workbook");
static const TCHAR s_szJapanese[] = _T("JAPANESE");

#define ROW_PLATFORMS    1
#define ROW_LANGUAGES    2
#define ROW_ID_START    5

#define MAX_LANGUAGES    10

#define CP_JAPANESE        932        // Japanese code page

// If you want this program to print out the chars needed from each column of the xl spreadsheet, define this.
//#define PRINTOUT_CHARS_FILE

bool IsSJISLeadingChar(WORD leadChar);

/////////////////////////////////////////////////////////////////////////////

const CString& CXConDoc::GetStringExcel(const CString& strID, int nLangIndex)
{
    static CString s_strNull;

    void* p;
    if (m_mapLangIDs.Lookup(strID, p))
    {
        if ((int)p < m_parLangData[nLangIndex].GetSize())
            return m_parLangData[nLangIndex][(int)p];
    }

    return s_strNull;
}

/////////////////////////////////////////////////////////////////////////////

void CXConDoc::OnUpdateLanguageRefresh(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable(!m_strLanguagePath.IsEmpty());
}

void CXConDoc::OnLanguageRefresh() 
{
    if (LoadLanguage())
        OnLanguageChange();
}

//===========================================================================
// void CXConDoc::OnUpdateLanguage(CCmdUI* pCmdUI) 
//===========================================================================
// Description: ???
//
// Constraints:    ???
//
// Parameters:    ???
//
// Return:      Nothing
//
//===========================================================================
void CXConDoc::OnUpdateLanguage(CCmdUI* pCmdUI) 
{
    //IJG - IMPROVE - this needs to be written
/*    int nSize = m_arLanguages.GetSize();
    if (!nSize)
    {
        if (!m_strOriginal.IsEmpty())
        {
            pCmdUI->SetText(m_strOriginal);
            m_strOriginal.Empty();
        }
        pCmdUI->Enable(FALSE);
    }
    else
    {
        CMenu* pMenu = pCmdUI->m_pMenu;
        if (!pMenu)
            return;

        if (m_strOriginal.IsEmpty())
            pMenu->GetMenuString(pCmdUI->m_nID, m_strOriginal, MF_BYCOMMAND);

        for (int i = 0; i < MAX_LANGUAGES; i++)
            pMenu->DeleteMenu(pCmdUI->m_nID + i, MF_BYCOMMAND);

        for (i = 0; i < nSize; i++)
        {
            if (m_bJapaneseWarn && m_nJapaneseIndex == i)
                continue;

            // insert mnemonic + language name
            TCHAR buf[10];
            wsprintf(buf, _T("&%d "), (i+1) % 10);
            pMenu->InsertMenu(pCmdUI->m_nIndex++,
                MF_STRING | MF_BYPOSITION, pCmdUI->m_nID + i,
                CString(buf) + m_arLanguages[i]);
        }

        // update end menu count
        pCmdUI->m_nIndex--; // point to last menu added
        pCmdUI->m_nIndexMax = pMenu->GetMenuItemCount();

        pCmdUI->m_bEnableChanged = TRUE;    // all the added items are enabled

        pMenu->CheckMenuItem(ID_LANGUAGE_1 + m_nLanguageIndex, MF_BYCOMMAND | MF_CHECKED);
    }
    */
}

void CXConDoc::OnLanguage(UINT nID) 
{
    m_nLanguageIndex = nID - ID_LANGUAGE_1;
    OnLanguageChange();
}

void CXConDoc::OnLanguageChange()
{
    CXOverlayArray* pOvrArray = (CXOverlayArray*)m_arDocItems[DOC_OVERLAYS];
    int nSize = pOvrArray->GetSize();
    for (int i = 0; i < nSize; i++)
        pOvrArray->GetAt(i)->OnLanguageChange();
}


//===========================================================================
// BOOL CXConDoc::LoadLanguage()
//===========================================================================
// Description: loads a text bible from disk 
//
// Constraints:    None
//
// Parameters:    uses the stored filename in the document
//
// Return:      boolean flag regarding whether the load was successful
//
//===========================================================================
BOOL CXConDoc::LoadLanguage()
{
    CWaitCursor wait;        //starts an hourglass cursor - gets reset when it goes out of scope

    BYTE* pData = NULL;
    LPSTORAGE lpRootStg = NULL;
    COleStreamFile file;
    BOOL bResult = FALSE;
    TRY
    {
        USES_CONVERSION;
        LPCOLESTR lpsz = T2COLE(m_strLanguagePath);

        SCODE sc = ::StgOpenStorage(lpsz, NULL, STGM_READ|STGM_TRANSACTED, NULL, 0, &lpRootStg);
        if (FAILED(sc))
            AfxThrowOleException(sc);

        // open Workbook stream
        CFileException fe;
        if (!file.OpenStream(lpRootStg, s_szWorkbook, CFile::modeRead|CFile::shareExclusive, &fe))
        {
            if (fe.m_cause == CFileException::fileNotFound)
            {
                AfxMessageBox(IDP_FAILED_INVALID_LANGUAGE);
                AfxThrowUserException();
            }
            else
                AfxThrowFileException(fe.m_cause, fe.m_lOsError);
        }

        DWORD dwStreamLen = file.GetLength();
        pData = new BYTE[dwStreamLen];
        if (!file.Read(pData, dwStreamLen))
            AfxThrowFileException(CFileException::endOfFile);

        file.Close();

        ParseLanguageFile((WORD*)pData);
        bResult = TRUE;
    }
    CATCH_ALL(e)
    {
        file.Abort();   // will not throw an exception
        ReportSaveLoadException(m_strLanguagePath, e, FALSE, IDP_FAILED_LOAD_LANGUAGE);
    }
    END_CATCH_ALL

    delete[] pData;

    if (lpRootStg)
        lpRootStg->Release();

    return bResult;
}

/////////////////////////////////////////////////////////////////////////////

#define XLR_BOF            0x0809    // beginning of file
#define XLR_EOF            0x0A    // end of file
#define XLR_SST            0xFC    // shared string table
#define XLR_BOUNDSHEET    0x85    // sheet info
#define XLR_LABELSST    0xFD    // cell value, string constant
#define XLR_CONTINUE    0x3C    // continue record

#pragma pack(1)

/* 

Unicode Strings in BIFF8
Microsoft Excel 97 uses unicode strings. In BIFF8, strings are stored in a compressed format. Each string contains the following fields:

Offset    Name        Size    Contents
0            cch        2        Count of characters in the string 
                                (notice that this is the number of characters, NOT the number of bytes)
2            grbit        1        Option flags
3            rgb        var    Array of string characters and formatting runs 
 
Unicode strings usually require 2 bytes of storage per character. 
Because most strings in USA/English Microsoft Excel always have the high bytes of 
unicode characters = 00h, the strings can be saved using a compressed unicode format. 
The grbit field specifies the compression encoding as shown in the following table.

Bits        Mask        Name            Contents
0            01h        fHighByte    = 0 if all the characters in the string have a high byte of 00h and
                                        only the low bytes are saved in the file (compressed)
                                        = 1 if at least one character in the string has a nonzero high byte
                                        and therefore all characters in the string are saved as 
                                        double-byte characters (not compressed)
1            02h        (Reserved)    Reserved; must be 0 (zero)
2            04h        fExtSt        Extended string follows (Far East versions, see text)
3            08h        fRichSt        Rich string follows
7-            F0h        (Reserved)    Reserved; must be 0 (zero)
4 

An unformatted string with all high bytes = 00h has grbit = 00h. Also, this implies that 
there are no formatting runs, which means that the runs count field does not exist.

An unformatted string that has at least one character with a nonzero high byte has grbit = 01h.
A formatted string with all high bytes = 00h has grbit = 08h if the string has several different 
character formats applied.

The easiest way to understand the contents of BIFF8 strings is to look at an example. 
Suppose the string "this is red ink" is in a cell, and is formatted so that the word red is red. 
The rgb field of the SST record appears as follows:

0f 00 08 02 00 74 68 69 73 20 69 73 20 72 65 64 20 69 6e 6b 08 00 06 00 0b 00 05 00

Swapping bytes and reorganizing:
000F  08  0002  74 68 69 73 20 69 73 20 72 65 64 20 69 6E 6B     0008  0006  000B  0005

This data parses as shown in the following table:

Data        Description
000F        String contains 15 characters.
08            The grbit is 08h, which indicates a rich string.
0002        Count of formatting runs (runs follow the string and are not included in 
            the character count; if there are no formatting runs, this field does not exist). 

74 68 69    The string characters; note that in this case, each character is one byte.
73 20 69
73 20 72
65 64 20 
69 6E 6B

0008 0006    Run number 1: index to FONT record 6 (ifnt, 0-based) for characters beginning 
                with character number 8 (0-based).
000B 0005    Run number 2: index to FONT record 5 (ifnt, 0-based) for characters beginning
                with character number B (0-based).
 
Extended Strings in Far East Versions
In Far East versions (for example, Japanese Microsoft Excel), extended strings may appear in 
the SST record (fExtSt is set in the grbit field). These strings store additional fields that 
contain phonetic, language ID, or keyboard ID information. The first two fields of extended strings 
(cch and grbit) are identical to the nonextended strings described in the preceding text.

Extended strings contain the fields shown in following tables.

Extended strings (not rich: fRichSt is not set)
Offset    Name            Size    Contents 
0            cch            2        Count of characters in the string data (notice that this is the number 
                                    of characters, NOT the number of bytes)
2            grbit            1        Option flags (see preceding table)
3            cchExtRst    4        Length of ExtRst data
7            rgb            var    String data
var        ExtRst        var    ExtRst data (not documented; length of this field is given by cchExtRst)
 
Extended strings (rich: fRichSt is set)

Offset    Name            Size    Contents
0            cch            2        Count of characters in the string data (notice that this is the number
                                    of characters, NOT the number of bytes)
2            grbit            1        Option flags (see preceding table)
3            crun            2        Count of formatting runs
5            cchExtRst    4        Length of ExtRst data
9            rgb            var    String data
var        rgSTRUN        var    Array of formatting run structures; length is equal to (crun x 8) bytes
var        ExtRst        var    ExtRst data (not documented; length of this field is given by cchExtRst)
 
*/


// Please see above documentation that was copied from MSDN help on Unicode BIFF8.
typedef struct
{
    WORD wCharCount;
    BYTE cOption;        // 0 - ASCII (0-127), 1 - double (UNICODE)
} XLS_TEXT;

#define F_HIGHBYTE    0x01    // double byte flag
#define F_EXTST        0x04    // extended string follows flag
#define F_RICHST        0x08    // rich string follows flag

typedef struct
{
    WORD cch;            // char count (NOT number of bytes)
    BYTE rbit;        // options flags
    WORD cchExtRst;    // Length of ExtRst data (following characters)
}    XLS_EXTENDED_TEXT;

#define XLS_RICH_TEXT    XLS_EXTENDED_TEXT

typedef struct
{
    WORD cch;            // character count (NOT the number of bytes)
    BYTE grbit;        // options flags
    WORD crun;            // count of formatting runs
    WORD cchExtRst;    // Length of ExtRst data (data following characters)
} XLS_EXTENDED_RICH_TEXT;

typedef struct
{
    DWORD dwTotalStrings;
    DWORD dwSharedStrings;
} XLS_SST;

typedef struct
{
    WORD wRow;
    WORD wCol;
    WORD wIndexXF;
    DWORD dwIndexSST;
} XLS_LABELSST;
#pragma pack()

static CString XLGetString(XLS_TEXT* pText, BOOL* pJapaneseWarn = NULL)
{
    int nLength;
    LPSTR pBuf;

    // for more info on this, search MSDN help for "biff8" 
    // and look for "Unicode Strings in BIFF8"
    BOOL bStringIsDoubleByte = FALSE;
    BOOL bExtendedString = FALSE;
    BOOL bRichString = FALSE;

    XLS_EXTENDED_TEXT            *pExtendedText =        (XLS_EXTENDED_TEXT *)pText;
    XLS_RICH_TEXT                *pRichText =            (XLS_RICH_TEXT *)pText;
    XLS_EXTENDED_RICH_TEXT    *pExtendedRichText =    (XLS_EXTENDED_RICH_TEXT *)pText;

    // Let's figure out what our options on this string are.

    if ((pText->cOption & F_HIGHBYTE) == F_HIGHBYTE)
        bStringIsDoubleByte = TRUE;
    if ((pText->cOption & F_EXTST) == F_EXTST)
        bExtendedString = TRUE;
    if ((pText->cOption & F_RICHST) == F_RICHST)
        bRichString = TRUE;

    // Here's where we get the pointer to the string buffer, and it's length..

    if (!bStringIsDoubleByte && !bExtendedString && !bRichString)
    {// This is our regular ascii string.. XLS_TEXT, no double byte, no tricks..
        pBuf = (LPSTR)(pText+1);
        nLength = pText->wCharCount;
    }
    else
    {
        if (!bExtendedString)
        {    
            if (!bRichString)    
            {    // XLS_TEXT(double byte)
                int nBytes = pText->wCharCount*2 + 1;    
                pBuf = new char[nBytes];
                nLength = ::WideCharToMultiByte(CP_JAPANESE, 0, (LPCWSTR)(pText+1), 
                                                          pText->wCharCount, pBuf, nBytes, NULL, NULL);
                if (!nLength)
                {
                    if (pJapaneseWarn && !*pJapaneseWarn)
                    {
                        if (!App()->IsExportOnly())
                            AfxMessageBox(IDP_JAPANESE_NOT_SUPPORTED);
                        *pJapaneseWarn = TRUE;
                    }
                    nLength = ::WideCharToMultiByte(CP_ACP, 0, (LPCWSTR)(pText+1), 
                                                              pText->wCharCount, pBuf, nBytes, NULL, NULL);
                }
            }
            else 
            {    // rich text cases (non extended)
                if (!bStringIsDoubleByte)
                {    // XLS_RICH_TEXT
                    pBuf = (LPSTR)(pRichText + 1);
                    nLength = pRichText->cch;
                }
                else
                {    // XLS_RICH_TEXT(double byte)
                    int nBytes = (pRichText->cch*2) + 1;    
                    pBuf = new char[nBytes];
                    nLength = ::WideCharToMultiByte(CP_JAPANESE, 0, (LPCWSTR)(pRichText+1), 
                                                              pRichText->cch, pBuf, nBytes, NULL, NULL);
                    if (!nLength)
                    {
                        if (pJapaneseWarn && !*pJapaneseWarn)
                        {
                            if (!App()->IsExportOnly())
                                AfxMessageBox(IDP_JAPANESE_NOT_SUPPORTED);
                            *pJapaneseWarn = TRUE;
                        }
                        nLength = ::WideCharToMultiByte(CP_ACP, 0, (LPCWSTR)(pRichText+1), 
                                                                  pRichText->cch, pBuf, nBytes, NULL, NULL);
                    }
                }
            }
        }
        else
        {// Extended string string cases.
            if (!bRichString)
            {
                if (!bStringIsDoubleByte)
                {    // XLS_EXTENDED_TEXT
                    pBuf = (LPSTR)(pExtendedText + 1);
                    nLength = pExtendedText->cch;
                }
                else
                {    // XLS_EXTENDED_TEXT(double byte)
                    int nBytes = (pExtendedText->cch*2) + 1;    
                    pBuf = new char[nBytes];
                    nLength = ::WideCharToMultiByte(CP_JAPANESE, 0, (LPCWSTR)(pExtendedText+1), 
                                                              pExtendedText->cch, pBuf, nBytes, NULL, NULL);
                    if (!nLength)
                    {
                        if (pJapaneseWarn && !*pJapaneseWarn)
                        {
                            if (!App()->IsExportOnly())
                                AfxMessageBox(IDP_JAPANESE_NOT_SUPPORTED);
                            *pJapaneseWarn = TRUE;
                        }
                        nLength = ::WideCharToMultiByte(CP_ACP, 0, (LPCWSTR)(pExtendedText+1), 
                                                                  pExtendedText->cch, pBuf, nBytes, NULL, NULL);
                    }
                }
            }
            else
            {
                if (!bStringIsDoubleByte)
                {    // XLS_EXTENDED_RICH_TEXT
                    pBuf = (LPSTR)(pExtendedRichText + 1);
                    nLength = pExtendedRichText->cch;
                }
                else
                {    // XLS_EXTENDED_RICH_TEXT(double byte)
                    int nBytes = (pExtendedRichText->cch*2) + 1;    
                    pBuf = new char[nBytes];
                    nLength = ::WideCharToMultiByte(CP_JAPANESE, 0, (LPCWSTR)(pExtendedRichText+1), 
                                                              pExtendedRichText->cch, pBuf, nBytes, NULL, NULL);
                    if (!nLength)
                    {
                        if (pJapaneseWarn && !*pJapaneseWarn)
                        {
                            if (!App()->IsExportOnly())
                                AfxMessageBox(IDP_JAPANESE_NOT_SUPPORTED);
                            *pJapaneseWarn = TRUE;
                        }
                        nLength = ::WideCharToMultiByte(CP_ACP, 0, (LPCWSTR)(pExtendedRichText+1), 
                                                                  pExtendedRichText->cch, pBuf, nBytes, NULL, NULL);
                    }
                }
            }
        }
    }


    CString str(pBuf, nLength);
    if (bStringIsDoubleByte)
        delete[] pBuf;
    return str;
}

//#ifdef PRINTOUT_CHARS_FILE
bool IsSJISLeadingChar(WORD leadChar)
{
    if ((leadChar > 0xff80) && (leadChar < 0xff9f))
        return true;
    else
        return false;
}
//#endif

void CXConDoc::AddToCharFile(WORD wLanguageID, WORD wCharToAdd, WORD wJapaneseCharToAdd, bool bJapaneseChar)
{
//#ifdef PRINTOUT_CHARS_FILE

    // search through the string list and see if this item is in there already..
    BOOL  bCharWasFound = FALSE;

    // how do we know if this is the japanese file? m_nJapaneseIndex
    
    //if ((wCharToAdd == 0) && (wJapaneseCharToAdd == 0))
    //    printf("Trouble! (%d %s)\n", __LINE__, __FILE__);

    if (m_charListData[wLanguageID].GetSize() != 0)
    {
        if ((m_charListData[wLanguageID].GetAt(0)).GetLength() != 0)
        {
            int findVal = 0;
            if (wLanguageID != m_nJapaneseIndex)
            {    // search throught the regular ascii file table..
                findVal = (m_charListData[wLanguageID].GetAt(0)).Find((char)wCharToAdd);
            }
            else // we have to search through the japanese chars file.. tricky as they're double byte..
            {
                CString tempString = (char)wCharToAdd;
                if (bJapaneseChar)
                {
                    tempString += (char)wJapaneseCharToAdd;
                    findVal = (m_charListData[wLanguageID].GetAt(0)).Find(tempString);
                }
                else
                {    // okay we have to jump through some extra hoops here, as this char is ascii, and
                    // we want to find it in a sea of japanese characters..
                    int startPoint = 0;
                    bool bHaveSearchedItAll = FALSE;

                    findVal = (m_charListData[wLanguageID].GetAt(0)).Find(tempString);
                    
                    while (!bHaveSearchedItAll)
                    {
                        if (findVal == -1)
                        {
                            // here's where we get out, it wasn't found..
                            bHaveSearchedItAll = TRUE;
                        }
                        else
                        {
                            startPoint += findVal;
                            int index = (startPoint == 0) ? 0 : startPoint - 1;
                            // let's see if the char before this one is part of a two byte japanese char or not..
                            WORD leadingChar = (m_charListData[wLanguageID].GetAt(0)).GetAt(index);

                            if (IsSJISLeadingChar(leadingChar))
                            {
                                // now we need to create a string that has only startPoint to endpoint
                                // characters in it to search..
                                startPoint++;    // pass over the found character..
                                CString newString = m_charListData[wLanguageID].GetAt(0);
                                newString.Delete(0, startPoint);

                                findVal = newString.Find(tempString);
                            }
                            else    // it's good! I've found the char, and it was an ascii char.
                            {
                                bHaveSearchedItAll = TRUE;
                            }    
                        }
                    }
                }
                // here's where we need to see if the wCharToAdd is followed directly by wJapaneseCharToAdd..
            }

            if (findVal != -1)
            {
                bCharWasFound = TRUE;
            }
        }
    }
    else
    {
        if (!bJapaneseChar)//(wLanguageID != m_nJapaneseIndex)
        {
            m_charListData[wLanguageID].SetAtGrow(0, (char)wCharToAdd);
        }
        else // add to the Japanese chars file..
        {
            CString newString = (char)wCharToAdd;
            newString += (char)wJapaneseCharToAdd;
            m_charListData[wLanguageID].SetAtGrow(0, newString);
        }

        bCharWasFound = TRUE;
    }

    if (!bCharWasFound)
    {
        // it's unique, so let's add it to our list..
        CString newString = (m_charListData[wLanguageID].GetAt(0)) += (char)wCharToAdd;

        //if ((wLanguageID == m_nJapaneseIndex) && (!bJapaneseChar))
        //    printf("Inspect (%d %s)\n", __LINE__, __FILE__);

        if (bJapaneseChar)//(wLanguageID == m_nJapaneseIndex)
        {
            newString += (char)wJapaneseCharToAdd;
        }
        m_charListData[wLanguageID].SetAtGrow(0, newString);
    }
//#endif
}

void CXConDoc::ParseLanguageFile(WORD* pData)
{
    //This section has been commented out because 
    //    1. excel file reading is now elsewhere
    //    2. the language database stuff is now elsewhere
    /*
    BYTE* pDataStart = (BYTE*)pData;
    WORD wRecNum, wRecLen;

    wRecNum = *pData++;
    if (wRecNum != XLR_BOF)
        AfxThrowArchiveException(CArchiveException::badSchema);

    BOOL bIsExportOnly = App()->IsExportOnly();

    DWORD dwSheetOffset = 0;
    BYTE** ppDataSST = NULL;
    BYTE* pStringData = NULL;
    CString strID;
    BOOL bValidRow;

    WORD wRowStart = 0xffff;
    WORD wColLangStart = 0;
    WORD wColX = 0;
    WORD wIDCount = 0;

    wRecLen = *pData++;
    pData = (WORD*)((BYTE*)pData + wRecLen);

    m_arLanguages.RemoveAll();
    m_mapLangIDs.RemoveAll();
    delete[] m_parLangData;
    delete[] m_charListData;
    m_parLangData = NULL;
    m_charListData = NULL;

    BOOL bSuccess = TRUE;    // assume success
    BOOL bEndOfFile = FALSE;

    while (!bEndOfFile)
    {
        wRecNum = *pData++;
        wRecLen = *pData++;

        switch (wRecNum)
        {
        case XLR_LABELSST:
            {
                XLS_LABELSST* pLabel = (XLS_LABELSST*)pData;
                XLS_TEXT* pText = (XLS_TEXT*)ppDataSST[pLabel->dwIndexSST];
                if (wRowStart == 0xffff)
                {
                    if (pLabel->wCol == 0)
                    {
                        if (XLGetString(pText) == s_szTableStart)
                            wRowStart = pLabel->wRow;
                    }
                }
                else if (pLabel->wRow >= wRowStart+ROW_ID_START)
                {
                    if (pLabel->wCol == 0)
                    {
                        strID = XLGetString(pText);
                        bValidRow = FALSE;
                    }
                    else if (pLabel->wCol == wColX)
                    {
                        void* p;
                        if (!m_mapLangIDs.Lookup(strID, p))
                        {
                            m_mapLangIDs[strID] = (void*)wIDCount;
                            wIDCount++;
                            bValidRow = TRUE;
                        }
                    }
                    else if (bValidRow && pLabel->wCol >= wColLangStart)
                    {
                        CString newString = XLGetString(pText, &m_bJapaneseWarn);
                        m_parLangData[pLabel->wCol - wColLangStart].SetAtGrow(wIDCount-1, newString);

#ifdef PRINTOUT_CHARS_FILE
                        m_bPrintOutXLCharsFile = 1;
#else
                        m_bPrintOutXLCharsFile = 0;
#endif
                        if (m_bPrintOutXLCharsFile == 1)
                        {
                            // add each char to the m_charListData for [pLabel->wCol - wColLangStart]
                            int strLen = newString.GetLength();

                            WORD japaneseChar = 0;
                            WORD leadChar = 0;
                            bool bIsAjapaneseChar = FALSE;
                            bool bJapaneseColumn = (pLabel->wCol - wColLangStart == m_nJapaneseIndex) ? 1 : 0;

                            if (strLen != 0)
                            {
                                leadChar = newString.GetAt(0);

                                if (bJapaneseColumn && (IsSJISLeadingChar(leadChar)))
                                {    // hey! what happens if we mix ascii characters in a japanese string?
                                    bIsAjapaneseChar = TRUE;
                                }

                                //if (bJapaneseColumn && (IsSJISLeadingChar(leadChar) != TRUE))
                                //    printf("trouble! (%d %s)\n", __LINE__, __FILE__);

                                for (int i = 0; i < strLen; i++)
                                {
                                    leadChar = 0;
                                    japaneseChar = 0;
                                    leadChar = newString.GetAt(i);
                                    // Japanese chars are double byte.. let's get the first byte, then 
                                    // get the second byte.
                                    if (bJapaneseColumn && (bIsAjapaneseChar))
                                    {
                                        japaneseChar = newString.GetAt(i + 1);
                                    }

                                    //if (!bIsAjapaneseChar)
                                    //{    // what if it's not a japanese char, but it's not ASCII??
                                    //    if (!((leadChar >= 0x00) && (leadChar <= 0x100)) )
                                    //        printf("Trouble!(%d %s)\n", __LINE__, __FILE__);
                                    //}

                                    //if ((pLabel->wCol - wColLangStart == m_nJapaneseIndex) && (!bIsAjapaneseChar))
                                    //    printf("Inspect (%d %s)\n", __LINE__, __FILE__);

                                    if (!((leadChar == 0x00) && (japaneseChar == 0x00)))
                                    {
                                        AddToCharFile(pLabel->wCol - wColLangStart, leadChar, japaneseChar, bIsAjapaneseChar);
                                    }
                                    
                                    if (bJapaneseColumn)
                                    {    // let's look at the next one to see if it's japanese as well..
                                        if (bIsAjapaneseChar)
                                        {
                                            i++;    // need to increment over the extra part of the char for japanese.
                                            if (i < (strLen - 1))
                                            {
                                                if (IsSJISLeadingChar(newString.GetAt(i + 1)) != TRUE)
                                                    bIsAjapaneseChar = FALSE;
                                            }
                                        }
                                        else // let's just look at the next char..
                                        {
                                            if ((i + 1) < (strLen - 1))
                                            {
                                                if (IsSJISLeadingChar(newString.GetAt(i + 1)))
                                                    bIsAjapaneseChar = TRUE;
                                            }
                                        }
                                    }
                                }
                            }
                        }
//#endif
                    }
                }
                else if (pLabel->wRow == wRowStart+ROW_PLATFORMS)
                {
                    CString strPlatform(XLGetString(pText));
                    if (strPlatform == s_szPlatformPSX && m_nPlatform == PLATFORM_PSX)
                        wColX = pLabel->wCol;
                    else if (strPlatform == s_szPlatformPC && m_nPlatform == PLATFORM_PC)
                        wColX = pLabel->wCol;
                }
                else if (pLabel->wRow == wRowStart+ROW_LANGUAGES)
                {
                    if (pLabel->wCol == 0)
                    {
                        if (wColX == 0)
                        {
                            // no platform column for this document type
                            AfxMessageBox("No platform column in Excel file.");
                            bSuccess = FALSE;
                            bEndOfFile = TRUE;
                        }
                    }
                    else
                    {
                        CString str = XLGetString(pText);
                        m_arLanguages.Add(str);
                        if (!wColLangStart)
                            wColLangStart = pLabel->wCol;
                        if (!str.CompareNoCase(s_szJapanese))
                            m_nJapaneseIndex = pLabel->wCol - wColLangStart;
                    }
                }
                else if (pLabel->wRow == wRowStart+ROW_LANGUAGES+1 && pLabel->wCol == 0)
                {
                    // create the language arrays
                    int nCount = m_arLanguages.GetSize();
                    m_parLangData = new CStringArray[nCount];
                    m_charListData = new CStringArray[nCount];
                    m_nLanguageIndex = min(m_nLanguageIndex, nCount-1);
                }
                break;
            }

        case XLR_BOUNDSHEET:
            // first time in here will be for sheet 1
            // first DWORD is offset of sheet BOF
            if (!dwSheetOffset)
                dwSheetOffset = *(DWORD*)pData;
            break;

        case XLR_SST:
            {
                // this record can get very large - check for continue records
                // there is a bug in Excel where a byte randomly appears after a continue record
                WORD wRecLenSave = wRecLen;
                DWORD dwDataLen = wRecLen - sizeof(XLS_SST);
                DWORD dwDataLenFirst = dwDataLen;
                WORD* pData2 = pData;
                while (TRUE)
                {
                    pData2 = (WORD*)((BYTE*)pData2 + wRecLen);
                    if (*pData2 != XLR_CONTINUE)
                        break;
                    wRecLen = *(pData2+1);
                    pData2 += 2;
                    dwDataLen += wRecLen;
                    BYTE b = *(BYTE*)pData2;
                    if (b == 0 || b == 1)
                        dwDataLen--;    // mysterious byte
                }

                pStringData = new BYTE[dwDataLen];

                // copy data into our new array
                XLS_SST* pSST = (XLS_SST*)pData;

                BYTE* pStringData2 = pStringData;
                memcpy(pStringData2, pSST+1, dwDataLenFirst);
                pStringData2 += dwDataLenFirst;

                wRecLen = wRecLenSave;
                while (TRUE)
                {
                    pData = (WORD*)((BYTE*)pData + wRecLen);
                    if (*pData != XLR_CONTINUE)
                        break;
                    wRecLen = *(pData+1);
                    pData += 2;
                    BYTE b = *(BYTE*)pData;
                    if (b == 0 || b == 1)
                    {
                        memcpy(pStringData2, (BYTE*)pData+1, wRecLen-1);    // mysterious byte
                        pStringData2 += wRecLen-1;
                    }
                    else
                    {
                        memcpy(pStringData2, pData, wRecLen);
                        pStringData2 += wRecLen;
                    }
                }

                ppDataSST = new BYTE*[pSST->dwSharedStrings];
                pStringData2 = pStringData;
                for (DWORD i = 0; i < pSST->dwSharedStrings; i++)
                {
                    ppDataSST[i] = pStringData2;
                    XLS_TEXT* pText = (XLS_TEXT*)pStringData2;

                    // for more info on this, search MSDN help for "biff8" 
                    // and look for "Unicode Strings in BIFF8"
                    BOOL bStringIsDoubleByte = FALSE;
                    BOOL bExtendedString = FALSE;
                    BOOL bRichString = FALSE;

                    XLS_EXTENDED_TEXT            *pExtendedText =        (XLS_EXTENDED_TEXT *)pStringData2;
                    XLS_RICH_TEXT                *pRichText =            (XLS_RICH_TEXT *)pStringData2;
                    XLS_EXTENDED_RICH_TEXT    *pExtendedRichText =    (XLS_EXTENDED_RICH_TEXT *)pStringData2;

                    if (pText->wCharCount > 256)
                    {
                        AfxMessageBox("Problem with string table in Excel file! Characters > 256.");
                        bSuccess = FALSE;
                        bEndOfFile = TRUE;
                        break;
                    }

                    // Let's figure out what our options on this string are.

                    if ((pText->cOption & F_HIGHBYTE) == F_HIGHBYTE)
                        bStringIsDoubleByte = TRUE;
                    if ((pText->cOption & F_EXTST) == F_EXTST)
                        bExtendedString = TRUE;
                    if ((pText->cOption & F_RICHST) == F_RICHST)
                        bRichString = TRUE;

                    // Now we need to figure out where to increment the pStringData2 to.

                    if (!bStringIsDoubleByte && !bExtendedString && !bRichString)
                    {// This is our regular ascii string.. XLS_TEXT, no double byte, no tricks..
                        pStringData2 += sizeof(XLS_TEXT) + pText->wCharCount;
                    }
                    else
                    {// Otherwise, we have to figure out what this pointer points to..
                        // Let's catch error stuff first..
                        if ((pText->cOption != 0x0) && (!bStringIsDoubleByte && !bExtendedString && !bRichString))
                        {    // okay.. so what is this then??  Let's raise a flag and quit..
                            AfxMessageBox("Problem with string table in Excel file! Invalid option.");
                            bSuccess = FALSE;
                            bEndOfFile = TRUE;
                            break;
                        }

                        // BYTE cOption - possible handled cases.
                        //
                        // xxxx    00x0    all x's MUST be zero (reserved bytes)
                        //
                        //            00x0 - XLS_TEXT
                        //            00x1 - XLS_TEXT(double byte)
                        //            01x0 - XLS_EXTENDED_TEXT
                        //       01x1 - XLS_EXTENDED_TEXT(double byte)
                        //       10x0 - XLS_RICH_TEXT
                        //       10x1 - XLS_RICH_TEXT(double byte)
                        //            11x0 - XLS_EXTENDED_RICH_TEXT
                        //            11x1 - XLS_EXTENDED_RICH_TEXT(double byte)
                        
                        // now let's handle the cases we can..
                        if (!bExtendedString)
                        {    
                            if (!bRichString)    
                                pStringData2 += sizeof(XLS_TEXT) + (pText->wCharCount * 2);    // XLS_TEXT(double byte)
                            else 
                            {    // rich text cases (non extended)
                                if (!bStringIsDoubleByte)
                                    pStringData2 += sizeof(XLS_RICH_TEXT) 
                                                        + pRichText->cch 
                                                       +(pRichText->cchExtRst * 4);// XLS_RICH_TEXT
                                else
                                    pStringData2 += sizeof(XLS_RICH_TEXT) 
                                                        +(pRichText->cch * 2) 
                                                       +(pRichText->cchExtRst * 4);// XLS_RICH_TEXT(double byte)
                            }
                        }
                        else
                        {// Extended string string cases.
                            if (!bRichString)
                            {
                                if (!bStringIsDoubleByte)
                                    pStringData2 += sizeof(XLS_EXTENDED_TEXT) 
                                                        + pExtendedText->cch 
                                                        +(pExtendedText->cchExtRst * 4);// XLS_EXTENDED_TEXT
                                else
                                    pStringData2 += sizeof(XLS_EXTENDED_TEXT) 
                                                        +(pExtendedText->cch * 2) 
                                                       +(pExtendedText->cchExtRst * 4);// XLS_EXTENDED_TEXT(double byte)
                            }
                            else
                            {
                                if (!bStringIsDoubleByte)
                                    pStringData2 += sizeof(XLS_EXTENDED_RICH_TEXT)
                                                        + pExtendedRichText->cch 
                                                        + pExtendedRichText->crun 
                                                        +(pExtendedRichText->cchExtRst * 4);// XLS_EXTENDED_RICH_TEXT
                                else
                                    pStringData2 += sizeof(XLS_EXTENDED_RICH_TEXT)
                                                        +(pExtendedRichText->cch * 2) 
                                                       + pExtendedRichText->crun 
                                                        +(pExtendedRichText->cchExtRst * 4);// XLS_EXTENDED_RICH_TEXT(double byte)
                            }
                        }
                    }

                }

                // finished with SST - skip to cell info
                pData = (WORD*)(pDataStart + dwSheetOffset);
                continue;
            }

        case XLR_EOF:
            bEndOfFile = TRUE;
            break;
        }

        pData = (WORD*)((BYTE*)pData + wRecLen);
    }

    if (m_bPrintOutXLCharsFile == 1)
    {
        // Here's where we should sort and print out the characters that are used for each column..
        int nLanguages = m_arLanguages.GetSize();

        for (int i=0; i < nLanguages; i++)
        {
            // sort and writeout the charset for each language.
            CString csLanguage = m_arLanguages.GetAt(i);
            CString csCharPathName = m_strExportPath;
            CString csLanguageFile = csCharPathName + "\\" + csLanguage + "char.txt";

            // get path and create a filename to write to, same path as the .xls spreadsheet
            FILE *ifp;

            ifp = fopen(csLanguageFile, "w");

            int nDataListSize = (m_charListData[i].GetAt(0)).GetLength();

            // if it's not Japanese, write 'ASCII 32' at the top
            if (i != m_nJapaneseIndex)
            {
                fprintf(ifp, "ASCII 32\n");
            }

            // sort all chars by number..
            SortCharList(i);

            for (int j = 0; j < nDataListSize; j++)
            {
                // write out char list
                if (i != m_nJapaneseIndex)
                {
                    fprintf(ifp, "%c\n", ((m_charListData[i].GetAt(0)).GetAt(j)));
                }
                else
                {
                    // here's where we print out the japanese characters.. whee!
                    WORD leadByte = 0;
                    WORD afterByte = 0;

                    leadByte = (m_charListData[i].GetAt(0)).GetAt(j);
                    bool bJapaneseChar = IsSJISLeadingChar(leadByte);

                    fprintf(ifp, "%c", leadByte);

                    if (bJapaneseChar)
                    {
                        afterByte = (m_charListData[i].GetAt(0)).GetAt(j + 1);
                        fprintf(ifp, "%c", afterByte);
                        j++;
                    }
                    fprintf(ifp, "\n");
                }
            }

            // write out 'END'
            fprintf(ifp, "END");
            fclose(ifp);
        }
    }
//#endif

    delete[] ppDataSST;
    delete[] pStringData;

    if (!bSuccess)
        AfxThrowUserException();
    */
}

//#ifdef PRINTOUT_CHARS_FILE
int cmp(const void *vp, const void *vq);
void    MySort(void *pDbcList, int dbcLength, CString *pDbc);

int cmp(const void *vp, const void *vq)
{
    const char *p = (const char *)vp;
    const char *q = (const char *)vq;

    if (*p > *q)
        return 1;
    else if (*p < *q)
        return -1;

    return 0;
}

void    FindSmallestElement(CString *pDbc, CString *pCsSmallest, int *pnIndex)
{
    CString cSsmallest, cScmp;
    int nLength = pDbc->GetLength();

    *pnIndex = 0;    // here's the location of the lead char for the smallest dbc.

    cSsmallest = pDbc->GetAt(0);
    cSsmallest += pDbc->GetAt(1);

    for (int i=2; i < nLength; i += 2)
    {
        cScmp = pDbc->GetAt(i);
        cScmp += pDbc->GetAt(i + 1);

        if (cSsmallest > cScmp)
        {
            *pnIndex = i;
            cSsmallest = cScmp;
        }
    }

    *pCsSmallest = cSsmallest;
}

void    MySort(void *pDbcList, int dbcLength, CString *pDbc)
{
    int startPoint = 0;
    int index = 0;
    CString str1;

    char *pNewList = (char *)pDbcList;    // let's just write to this list..

    while (startPoint != dbcLength)
    {
        FindSmallestElement(pDbc, &str1, &index);

        pNewList[startPoint] = str1.GetAt(0);
        pNewList[startPoint + 1] = str1.GetAt(1);

        pDbc->Delete(index, 2);

        startPoint += 2;
    }
}

void SortDBCandSBC(char *psList, int nLength, CString *pString)
{
    // create two lists, one for DBC and one for all the SBC
    // sort each, and put the SBC list first in the new list.
    CString sbc;
    CString dbc;

    WORD leadByte = 0;
    WORD afterByte = 0;

    // let's split up the two strings first..
    for (int i = 0; i < nLength; i++)
    {
        leadByte = psList[i];
        if (IsSJISLeadingChar(leadByte))
        {
            CString tempString = (char)leadByte;
            tempString += psList[i + 1];
            dbc += tempString;
            i++;
        }
        else
        {
            sbc += (char)leadByte;
        }
    }

    // now we can sort each one..
    int dbcLength = dbc.GetLength();
    int sbcLength = sbc.GetLength();

    //if ((dbcLength + sbcLength) != nLength)
    //    printf("Trouble!(%d %s)\n", __LINE__, __FILE__);

    char* pDbcList = NULL;
    char* pSbcList = NULL;
    
    pDbcList = new char[dbcLength];
    pSbcList = new char[sbcLength];

    leadByte = 0;
    afterByte = 0;

    for (i = 0; i < dbcLength; i += 2)
    {
        leadByte = dbc.GetAt(i);
        afterByte = dbc.GetAt(i + 1);

        //if (!IsSJISLeadingChar(leadByte))
        //    printf("Trouble(%d %s)\n", __LINE__, __FILE__);
        pDbcList[i] = (char)leadByte;
        pDbcList[i + 1] = (char)afterByte;
    }

    for (i = 0; i < sbcLength; i++)
    {
        leadByte = sbc.GetAt(i);
        //if (IsSJISLeadingChar(leadByte))
        //    printf("Trouble(%d %s)\n", __LINE__, __FILE__);
        pSbcList[i] = (char)leadByte;
    }

    qsort((void *)pSbcList, sbcLength, sizeof(char), cmp);
    MySort((void *)pDbcList, dbcLength, &dbc);

    CString newString;

    for (int k=0; k < sbcLength; k++)
    {
        newString += pSbcList[k];
    }

    //if (newString.GetLength() != sbcLength)
    //    printf("Trouble!(%d %s)\n", __LINE__, __FILE__);

    for (k = 0; k < dbcLength; k++)
    {
        newString += pDbcList[k];
    }
    
    //if (newString.GetLength() != nLength)
    //    printf("Trouble!(%d %s)\n", __LINE__, __FILE__);

    *pString = newString;

    for (int l=0 ; l < newString.GetLength(); l++)
    {    // copy all elements over..
        psList[l] = newString.GetAt(l);
    }

    delete[] pDbcList;
    delete[] pSbcList;
}

//#endif

void CXConDoc::SortCharList(int nLanguage)
{
//#ifdef PRINTOUT_CHARS_FILE
    int length = (m_charListData[nLanguage].GetAt(0)).GetLength();
    char* pList = NULL;
    
    pList = new char[length];

    for (int i = 0; i < length; i++)
    {
        pList[i] = (m_charListData[nLanguage].GetAt(0)).GetAt(i);
    }

    CString sortedDBCnSBC;

    if (nLanguage != m_nJapaneseIndex)
    {
        qsort((void *)pList, length, sizeof(char), cmp);
    }
    else
    {
        // here's where I cook up my own double byte char and single byte char sorter! wheee!
        SortDBCandSBC(pList, length, &sortedDBCnSBC);
    }

    CString newString(pList);
    m_charListData[nLanguage].SetAtGrow(0, newString);

    //CString testString = m_charListData[nLanguage].GetAt(0);

    delete[] pList;
//#endif
}



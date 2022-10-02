//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef VIEWER_FILEDIALOG_HPP_
#define VIEWER_FILEDIALOG_HPP_

class CommandRecipient;

class FileDialog
{
public:
    FileDialog(CommandRecipient* r) : recip(r) {}
    void Open(char* command);
    void Save(char* command);
    void SaveAvi(char* command);

private:
    CommandRecipient* recip;
};


#endif
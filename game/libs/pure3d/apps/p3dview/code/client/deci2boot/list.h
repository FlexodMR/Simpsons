/* SCEI CONFIDENTIAL
 "PlayStation2" Programmer Tool Runtime Library  Release 1.1
 */
// Version 0.00
// ASCII
// 
// Copyright (C) 1999 Sony Computer Entertainment Inc. All Rights Reserved.
// 
// Version        Date            Design      Log
// --------------------------------------------------------------------
// 0.00           10/13/99        koji        1st version

#ifndef _LIST_H
#define _LIST_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct List {
    struct List *next;
    struct List *prev;
} LIST, LISTNODE;

#define ListInit(list)        ((list)->prev = (list)->next = (list))
#define ListGetNext(node)    ((void *)((LISTNODE *)node)->next)
#define ListGetPrev(node)    ((void *)((LISTNODE *)node)->prev)
#define ListGetHead(list)    ((void *)((LISTNODE *)list)->next)
#define ListGetTail(list)    ((void *)((LISTNODE *)list)->prev)
void    ListInsertAfter(void *node, void *newnode);
#define ListInsertBefore(node, newnode)    \
                                 ListInsertAfter(ListGetPrev(node), newnode)
#define ListAddHead(list, newnode)    ListInsertAfter(list, newnode)
#define ListAddTail(list, newnode)    ListInsertBefore(list, newnode)
#define ListIsEmpty(list)    \
  (((LIST *)list)->prev == (LIST *)list && ((LIST *)list)->next == (LIST *)list)
void   *ListDelete(void *node);
#define ListDone(node, list)    ((LISTNODE *)node == (LIST *)list)
void    ListForEach(LIST *list, void (*proc)(LISTNODE *node));

#ifdef __cplusplus
}
#endif

#endif    // _LIST_H


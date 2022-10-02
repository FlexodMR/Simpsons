/* $Id: dbi_sql.h,v 1.1 1997/07/22 23:17:50 timbo Exp $
 *
 * Copyright (c) 1997 Tim Bunce
 *
 * You may distribute under the terms of either the GNU General Public
 * License or the Artistic License, as specified in the Perl README file.
 */


/* Some core SQL CLI standard (ODBC) declarations		*/
#ifndef SQL_SUCCESS	/* don't clash with ODBC based drivers	*/

/* Standard SQL datatypes (ANSI/ODBC type numbering)		*/
#define	SQL_CHAR		1	/*	DBI_CHAR 	*/
#define	SQL_NUMERIC		2
#define	SQL_DECIMAL		3
#define	SQL_INTEGER		4	/*	DBI_INTEGER	*/
#define	SQL_SMALLINT		5
#define	SQL_FLOAT		6	/*	DBI_FLOAT	*/
#define	SQL_REAL		7
#define	SQL_DOUBLE		8
#define	SQL_VARCHAR		12	/*	DBI_VARCHAR	*/

#ifdef just_for_pondering /* not used yet, just here for pondering */
#define SQL_DATE           9
#define SQL_TIME           10
#define SQL_TIMESTAMP      11
#define SQL_LONGVARCHAR    (-1)
#define SQL_BINARY         (-2)
#define SQL_VARBINARY      (-3)
#define SQL_LONGVARBINARY  (-4)
#define SQL_BIGINT         (-5)
#define SQL_TINYINT        (-6)
#endif

/* Main return codes						*/
#define	SQL_ERROR			(-1)
#define	SQL_SUCCESS			0
#define	SQL_SUCCESS_WITH_INFO		1
#define	SQL_NO_DATA_FOUND		100

#endif	/*	SQL_SUCCESS	*/

/* Handy macro for testing for success and success with info.		*/
/* BEWARE that this macro can have side effects since rc appears twice!	*/
/* So DONT use it as if(SQL_ok(func(...))) { ... }			*/
#define SQL_ok(rc)	((rc)==SQL_SUCCESS || (rc)==SQL_SUCCESS_WITH_INFO)


/* end of dbi_sql.h */

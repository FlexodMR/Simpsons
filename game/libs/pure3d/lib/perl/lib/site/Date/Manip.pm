package Date::Manip;

# Copyright (c) 1995-1997 Sullivan Beck. All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

###########################################################################
# CUSTOMIZATION
###########################################################################
#
# See the section of the POD documentation section CUSTOMIZING DATE::MANIP
# below for a complete description of each of these variables.

# Location of a the global config file.  Tilde (~) expansions are allowed.
$Date::Manip::GlobalCnf="";
$Date::Manip::IgnoreGlobalCnf="";

### Date::Manip variables set in the global config file

# Name of a personal config file and the path to search for it.  Tilde (~)
# expansions are allowed.
$Date::Manip::PersonalCnf=".DateManip.cnf";
$Date::Manip::PersonalCnfPath=".:~";

### Date::Manip variables set in the global or personal config file

# Which language to use when parsing dates.
$Date::Manip::Language="English";

# 12/10 = Dec 10 (US) or Oct 12 (anything else)
$Date::Manip::DateFormat="US";

# Local timezone
$Date::Manip::TZ="";

# Timezone to work in (""=local, "IGNORE"=ignore timezones, or a timezone)
$Date::Manip::ConvTZ="";

# Date::Manip internal format (0=YYYYMMDDHH:MN:SS, 1=YYYYHHMMDDHHMNSS)
$Date::Manip::Internal=0;

# First day of the week (0=sunday, 6=saturday)
$Date::Manip::FirstDay=0;

# First and last day of the work week  (0=sunday, 6=saturday)
$Date::Manip::WorkWeekBeg=1;
$Date::Manip::WorkWeekEnd=5;

# If non-nil, a work day is treated as 24 hours long (WorkDayBeg/WorkDayEnd
# ignored)
$Date::Manip::WorkDay24Hr=0;

# Start and end time of the work day (any time format allowed, seconds ignored)
$Date::Manip::WorkDayBeg="08:00";
$Date::Manip::WorkDayEnd="17:00";

# Erase the old holidays
$Date::Manip::EraseHolidays="";

# Set this to non-zero to be produce completely backwards compatible deltas
$Date::Manip::DeltaSigns=0;

###########################################################################

require 5.000;
require Exporter;
@ISA = qw(Exporter);
@EXPORT = qw(
   DateManipVersion
   ParseDate
   UnixDate
   DateCalc
   ParseDateDelta

   Date_SetTime
   Date_GetPrev
   Date_GetNext
   Date_DayOfWeek
   Date_SecsSince1970
   Date_SecsSince1970GMT
   Date_DaysSince999
   Date_DayOfYear
   Date_DaysInYear
   Date_WeekOfYear
   Date_LeapYear
   Date_DaySuffix
   Date_TimeZone
   Date_ConvTZ
   Date_Init
   Date_IsWorkDay
   Date_NextWorkDay
   Date_PrevWorkDay
);
use strict;
use Carp;
use Cwd;
#use POSIX qw(tzname);

########################################################################
# HISTORY
########################################################################

# Written by:
#    Sullivan Beck (beck@qtp.ufl.edu)
# Any suggestions, bug reports, or donations :-) should be sent to me.

# Version 1.0  01/20/95
#    Combined all routines into one library
#
# Version 1.1  02/08/95
#    Added leap year checking
#    Both "Feb" and "February" formats available
#
# Version 1.2  03/31/95
#    Made months case insensitive
#    Added a few date formats
#
# Version 2.0  04/17/95
#    Included ideas from packages
#       Time::ParseDate (David Muir Sharnoff <muir@idiom.com>)
#       date.pl 3.2     (Terry McGonigal <tmcgonigal@gvc.com>)
#    Made error checking much nicer
#    Added seconds to ParseDate
#
# Version 3.0  05/03/95
#    Added %DATE_ global variable to clean some stuff up
#    Simplified several routines
#    Added today/now/tomorrows/etc. formats
#    Added UnixDate
#    Added ParseDateDelta
#
# Version 4.0  08/13/95
#    Switched to perl 5
#    Cleaned up ParseDate, ParseDateDelta
#    Added time first formats to ParseDate
#    First public release
#
# Version 4.1  10/18/95
#    Changed %DATE_ to %DateManip::Date
#    Rewrote ParseDateDelta
#    Added DateCalc
#
# Version 4.2  10/23/95
#    UnixDate will now return a scalar or list depending on context
#    ParseDate/ParseDateDelta will now take a scalar, a reference to a
#       scalar, or a eference to an array
#    Added copyright notice (requested by Tim Bunce <Tim.Bunce@ig.co.uk>)
#    Simple timezone handling
#    Added Date_SetTime, Date_GetPrev, Date_GetNext
#
# Version 4.3  10/26/95
#    Added "which dofw in mmm" formats to ParseDate
#    Added a bugfix of Adam Nevins where "12:xx pm" used to be parsed
#        "24:xx:00".
#
# Version 5.00  06/21/96
#    Switched to a package (patch supplied by Peter Bray
#       <pbray@ind.tansu.com.au>)
#       o  renamed to Date::Manip
#       o  changed version number to 2 decimal places
#       o  added POD documentation
#       Thanks to Peter Bray, Randal Schwartz, Andreas Koenig for suggestions
#    Fixed a bug pointed out by Peter Bray where it was complaining of
#       an uninitialized variable.
#
# Version 5.01  06/24/96
#    Fixes suggested by Rob Perelman <robp@electriciti.com>
#       o  Fixed a typo (Friday misspelled Fridat)
#       o  Documentation problem for \$err in DateCalc
#       o  Added %F formtat to UnixDate
#    Reworked a number of the ParseDate regular expressions to make
#       them more flexible
#    Added "Date at Time" types
#    Weekdays can be entered and checked
#    Two digit years fall in the range CurrYear-89 to CurrYear+10
#
# Version 5.02  07/15/96
#    Fixed a bug where repeated calls to ParseDate("today") was not reset
#    Replaced the %Date::Manip::Date variable with a large number of
#       other, more flexible variables
#    Added some internationalization (most of the routines had to be
#       modified at least slightly)
#    Rewrote the Init routine
#
# Version 5.03  07/17/96
#    Fixed a couple of bugs in UnixDate.
#    Declared package variables to avoid warning "Identifier XXX used
#       only once".  Thanks to Peter Bray for the suggestion.
#
# Version 5.04  08/01/96
#    Added support for fractional seconds (as generated by Sybase).  They
#       are parsed and ignored.  Added by Kurt Stephens
#       <stephens@il.us.swissbank.com>.
#    Fixed bugs reported by J.B. Nicholson-Owens
#       <jbn@mystery-train.cu-online.com>
#       o  "Tue Jun 25 1996" wasn't parsed correctly (regexp was case
#          sensitive)
#       o  full day names not parsed correctly
#       o  the default day in ErrorCheck should be 1, NOT currd since when
#          currd>28, it may not be a valid date for the month
#
# Version 5.05  10/11/96
#    Added Swedish translation (thanks to Andreas Johansson
#       <Andreas.XS.Johansson@trab.se>
#    Fixed bad mistake in documentation (use Date::Manip instead of
#       use DateManip) pointed out by tuc@valhalla.stormking.com
#    Fixed bug introduced in 5.04 when default day set to 1.  When no
#       date given, have day default to today rather than 1.  It only
#       defaults to one if a partial date is given.
#    Changed deltas to be all positive or all negative when produced by
#       DateCalc.  Suggested by Steve Braun <braun@gandalf.sp.trw.com>
#    Fixed bug where Date_DaysSince999 returned the wrong value (the
#       error did not affect any other functions in Date::Manip due to
#       the way it was called and the nature of the error).  Pointed out
#       by Jason Baker <bm11455@themis.ag.gov.bc.ca>.
#    Minor improvements to documentation.
#    Documented the 'sort within a sort' bug.
#    Added DateManipVersion routine.
#    Dates with commas in them are now read properly.
#    Now supports timezones.
#    Parses RFC 822 dates (thanks to J.B. Nicholson-Owens
#       <jbn@mystery-train.cu-online.com> for suggestion).
#    Parses ctime() date formats (suggested by Matthew R. Sheahan
#       <chaos@crystal.palace.net>).
#    Added Date_ConvTZ routine for timezone support.
#    Fixed two places where a variable was declared twice using my (thanks
#       to Ric Steinberger <ric@isl.sri.com>).
#    Hopefully fixed installation problems.
#    Now supports times like "noon" and "midnight".
#    Got rid of the last (I think) couple of US specific strings.
#    The time separators are now language specific so the French can
#       write "10h30" and the Swedes can write "10.30".  Suggested by
#       Andreas Johansson <Andreas.XS.Johansson@trab.se>.
#    Fixed type in documentation/README pointed out by James K. Bence
#       <jbence@math.ucla.edu>.
#    Fixed bug in Date_SetTime (didn't work with $hr,$min,$sec < 10).
#    Added ModuloAddition routine and simplified DateCalc.
#    Date_TimeZone will now also check `date '+%Z'` suggested by
#       Aharon Schkolnik <aharon@healdb.matat.health.gov.il>.
#
# Version 5.06  10/25/96
#    Fixed another two places where a variable was declared twice using my
#       (thanks to Ric Steinberger <ric@isl.sri.com>).
#    Fixed a bug where fractional seconds weren't parsed correctly.
#    Fixed a bug where "noon" and other special times were not parsed
#       in the "which day of month" formats.
#    Added "today at time" formats.
#    Fixed a minor bug where a few matches were case sensitive.
#    ParseDateDelta now normalizes the delta as well as DateCalc.
#    Added %Q format "YYYYMMDD" to UnixDate.  Requested by Rob Perelman
#       <robp@electriciti.com>.
#    The command "date +%Z" doesn't work on SunOS machines (and perhaps
#        others) so 5.05 is effectively broken.  5.06 released to fix this.
#        Reported by Rob Perelman <robp@electriciti.com>.
#
# Version 5.07  12/10/96
#    Huge number of code changes to clean things up.
#    Added %q format "YYYYMMDDHHMMSS" to UnixDate.  Requested by Rob Perelman
#       <robp@electriciti.com>.  Also added %P format "YYYYMMDDHH:MM:SS".
#    Added a new config variable to allow you to work with multiple internal
#       formats (with and without colons).  Requested by Rob Perelman
#       <robp@electriciti.com>.  See Date_Init documentation.
#    Added the following formats suggested by Andreas Johansson
#       <Andreas.XS.Johansson@trab.se>:
#          sunday week 22 [in 1996] [at 12:00]
#          22nd sunday [in 1996] [at 12:00]
#          sunday 22nd week [in 1996] [at 12:00]
#    Added weeks to ParseDateDelta.  Suggested by Mike Bassman
#       <mbassman@fia21-43.fiadev21.lehman.com>.  Note that since
#       this is a late addition, I did not change the internal format
#       of a delta.  Instead, it is added to the days field.
#    Added a new config variable to allow you to define the first day of
#       the week.  See Date_Init documentation.
#    Added the following formats to ParseDate for conveniance (some were
#       suggested by Mike Bassman <mbassman@fia21-43.fiadev21.lehman.com>):
#          next/last friday [at time]
#          next/last week [at time]
#          in 2 weeks [at time]
#          2 weeks ago [at time]
#          Friday in 2 weeks
#          in 2 weeks on friday
#          Friday 2 weeks ago
#          2 weeks ago friday
#    Added Date_SecsSince1970GMT, moved the %s format to %o (secs since 1/1/70)
#       and added %s format (secs since 1/1/70 GMT).  Based on suggestions by
#       Mark Osbourne <marko@lexis-nexis.com>.  Note this introduces a minot
#       backward incompatibility!
#    Date_SetTime now works with international time separators.
#    Changed how Date_Init arguments work.
#    Fixed bug in Date_TimeZone where it didn't recognize +HHMN type time
#       zones.  Thanks to Are Bryne <are.bryne@communique.no>.
#    Added the %g format (%a, %d %b %Y %H:%M:%S %z) for an RFC 1123 date.
#       Suggested by Are Bryne <are.bryne@communique.no>.
#    Added WindowsNT check to Date_TimeZone to get around NT's weird date
#       command.  Thanks to Are Bryne <are.bryne@communique.no>.
#    Subroutines now check to see if 4 digit years are entered.  Suggested
#       by Are Bryne <are.bryne@communique.no>.
#    Fixed typo (CSD instead of CST).
#    Now reads a config file.
#    Added options to delete existing holidays and ignore global config file.
#    The d:h:mn:s of ALL deltas are normalized.
#    Added local($_) to all routines which use $_.  Suggested by Rob
#       Perelman <robp@electriciti.com>.
#    Date_GetNext and Date_GetPrev now return the next/prev occurence of a
#       time as well as a day.  Suggested by Are Bryne
#       <are.bryne@communique.no>.
#    Complete rewrite of DateCalc.
#    In approximate mode, deltas now come out completely normalized (only 1
#       sign).  Suggested by Rob Perelman <robp@electriciti.com>.
#    Added business mode.  See documentation.  Suggested by Mike Bassman
#       <mbassman@fia21-43.fiadev21.lehman.com>.
#    Modified how deltas are normalized and added the DeltaSigns config
#       variable.
#    Added test suite!
#    Fixed sign in military timezones making Date::Manip RFC 1123 compliant
#       (except that timezone information is not stored in any format)
#    Added Date::Manip::InitDone so initialization isn't duplicated.
#    Added a 3rd internal format to store YYYY-MM-DD HH:MN:SS (iso 8601).
#    Fixed a bug where UnixDate %E format didn't work with single digit
#       dates.  Patch supplied by J\yrgen N\yrgaard <jnp@www.ifs.dk>.
#    Added a config variable to allow you to work with 24 hour business
#       days.  Suggested by Mike Bassman
#       <mbassman@fia21-43.fiadev21.lehman.com>.
#    ParseDateDelta now returns "" rather than "+0:0:0:0:0:0" when there is
#       an error.
#    Fixed a bug where "today" was not converted to the correct timezone.
#
# Version 5.07p2  01/03/97
#    Added lots of timezone abbreviations.
#    Can now understand PST8PDT type zones (but only in Date_TimeZone).
#    Fixed some tests (good for another year).
#    Fixed a bug where a delta component of "-0" would mess things up.
#       Reported by Nigel Chapman <nigel@macavon.demon.co.uk>.
#    Released two patches for 5.07.
#
# Version 5.08  01/24/97
#    Fixed serious bug in ConvTZ pointed out by David Hall
#       <dhall@sportsline.com>.
#    Modified Date_ConvTZ (and documented it).
#    Released 5.08 to get this and the other two patches into circulation.
#
# Version 5.09  01/28/97
#    Upgraded to 5.003_23 and fixed one problem associated with it.
#    Used carp and changed all die's to confess.
#    Replaced some UNIX commands with perl equivalents (date with localtime
#       in the tests, pwd with cwd in the path routines).
#    Cleaned up all routines working with the path.
#    Tests work again (broke in 5.08).  Thanks to Alex Lewin <lewin@vgi.com>,
#       and Michael Fuhr <mfuhr@blackhole.dimensional.com> for running
#       debugging tests.
#
# Version 5.10  03/19/97
#    Tests will now run regardless of the timezone you are in.
#    Test will always read the DateManip.cnf file in t/ now.
#    A failed test will now give slightly more information.
#    Cleaned up In, At, and On regexps.
#    DateManip.cnf file in t/ now sets ALL options to override any changes
#       made in the Manip.pm file.
#    Added documentation for backwards incompatibilities to POD.
#    Added 2 checks for MSWin32 (date command and getpw* didn't work).  Thanks
#       to Alan Humphrey <alanh@velleb.com>.
#    Fixed two bugs in the DateCalc routines.  Pointed out by Kevin Baker
#       <ol@twics.com>
#    Fixed some problems in POD documentation.  Thanks to Marvin Solomon
#       <solomon@cs.wisc.edu>.
#    Fixed some problems with how "US/Eastern" type timezones were used.
#       Thanks to Marvin Solomon <solomon@cs.wisc.edu>.
#    Fixed minor POD error pointed out by John Perkins <john@cs.wisc.edu>.
#    Added a check for Windows_95.  Thanks to charliew@atfppc.ppc.att.com.
#    Changed documentation for Date_IsWorkDay (it was quite confusing using
#       a variable named $time).  Thanks to Erik M. Schwartz
#       <eriks@library.nrl.navy.mil>.
#    Cleaned up checks for MacOS and Microsoft OS's.  Hopefully I'm catching
#       everything.  Thanks to Charlie Wu <charwu@ibm.net> for one more check.
#    Fixed typo in docs (midnight mispelled).  Thanks to Timothy Kimball
#       <kimball@stsci.edu>.
#    Fixed a typo which broke Time%Date (Date=dd%mmm%yy) format.  Thanks to
#       Timothy Kimball <kimball@stsci.edu>.

# Backwards incompatibilities
#
# In 5.07
#   %s format changed
#   By default, the signs of stored in a different format (only minimum
#     number of signs stored).  Backwards compatible if you set DeltaSigns=1.
#   Date_Init arguments changed (old method supported but depreciated)

$Date::Manip::Version="5.10";

########################################################################
# TODO
########################################################################

################ NEXT VERSION

### SPEEDUPS

# use integer;   whenever possible

# in ParseDate/ParseDateDelta check for the internal format right away

# &Date_Init  if (! $Date::Manip::Initiailized)   to all calls to Date_Init

# UpdateHolidays, don't use ParseDate to parse dates of form DD/MM or MM/DD.

### ISO

# Make sure "-" is not a date separator ever. (reserved by ISO 8601).

# In order to conform to ISO 8601:
#
#   date=YYYY-MM-DD
#        YY-MM-DD
#        YYYY-MM
#        YY-MM
#        YYYYMMDD
#        YYMMDD
#        YYYY
#        YY
#
# By default, the week starts with Monday.
# The 1st week of the year is the first full week which contains at least
#    4 days in the year (so Jan 1 may actually be in one of the weeks of
#    the previous year or week 1 may contain Dec 31 of the previous year!).
#
# The first week of the year 1997 lasts from 1996-12-30 to 1997-01-05 can
# be specified:
#        1995-W01
#        1995W01
#        95W01
#
# The day 1996-12-31, which is the Tuesday (day 2) of the first week of 1997,
# can also be written as
#        1997-W01-2
#        1997W012
#        97W012
# Weeks are 1-53.
#
# Weekdays are numbered 1 (monday) to 7 (sunday).  Support sunday as 0 as
# well, and typically sunday will be referred to as day 0.
#
# Formats with the day-of-year (001 to 366)
#        YYYY-DOY
#        YYYYDOY
#
# Times are given by:
#        HH:MN:SS
#        HH:MN
#        HHMNSS
#        HHMN
#        HH
#        HH:MN:SS.FFFFFFF
#        HHMNSSFFFFFFF
#
# Note:  24:00:00 is NOT supported (though ISO allows it).
#
# All times may have a timezone attached to the end (space between time
# and zone is optional) of the forms listed above as well as:
#        +HH:MN
#        +HHMN
#        +HH

# Add an option to treat Jan 1 as the 1st week of the year.

# Add a UnixDate format to print out a date in the format:
#   YYYY-Wwwd
#   YYYY-doy

# check "Sunday 22nd week", "22nd Sunday" vs. ISO weeks

### TESTS

# Add tests for all the new ParseDate formats to the test suite.

### GRANULARITY

# $flag=&Date_GranularityTest($date,$base,$granularity [,$flags] [$width])
#    $date and $base are dates
#    $granularity and $width are deltas
#    $flags is a list of flags
#
#    To test if a day is one of every other Friday (starting at Friday
#    Feb 7, 1997), go:
#       $base=&ParseDate("Friday Feb 7 1997");
#       $date=&ParseDate("...");
#       $granularity=&ParseDateDelta("+ 2 weeks");
#       $flag=&Date_Granularity($date,$base,$granularity,"exact");
#    If $flag is 1, the $date is a 2nd Friday from Feb 7.
#
#    The most important field in $granularity is the last non-zero element.
#    In the above example, 2 weeks returns the delta 0:0:14:0:0:0 so the
#    last non-zero element is days with a value of 14.
#
#    If $flags is empty, $date is checked to see if it occurs some multiple
#    of 14 days before or after $base.  In this case, hourse, minutes, and
#    seconds are completely ignored.
#
#    If $flags contains the words "before" or "after", $date must come
#    before or after $base.
#
#    If $flags contains any other options, or if $width is passed in, the
#    test is treated in an approximate way.  A flag of "approx" forces this
#    behavior.
#
#    If $width is not passed in in an approximate comparison, it defaults
#    to 1 in the last non-zero element.  Here, the default width is 1 day.
#    If the flag "half" is used, the width (default or passed in) is
#    halved.
#
#    For example if $width is 1 day, add a multiple of $granularity to
#    $base to get as close to $date as possible.  If $date is within plus
#    or minus 1 day of this new base, the test is successful.  A flag of
#    "plus" or "minus" means that $date must be with plus 1 day or within
#    minus one day of this new base.  Flags of "before" or "after" work
#    as well.

# @list=&Date_GranularityList($date,$N,$granularity)
#    Returns a list of $N dates AFTER $date which are created by adding
#    $granularity to $date $N times.  If $N<0, it returns $N dates BEFORE
#    $date (the list is in chronological order).

### DAYLIGHT SAVINGS TIME

# Use POSIX tzset/tzname (and perhaps GNU date) to handle timezone and
# daylight savings time correctly.  See messages by Marvin Soloman.

# If ignoring TIMEZONE info, treat all dates as in current timezone with
# no d.s.t. effects (i.e. Jun 1 12:00 EDT == Jun 1 12:00 EST).

# To do calculations, convert to current timezone (Jun 1 12:00 EDT -> Jun 1
# 11:00 EST even if that date doesn't really exist)

# Determine zone pairings EST/EDT, PST/PDT for all zones.  Store EST#EDT in
# $Date::Manip::TZ rather than just EST or EDT.  Make sure everything is
# paired up.  Places with only a single timezone should work as well.

# Make a 2nd hash where EST -> EST#EDT for all timezones.

# When doing date calculations, if neither date has a time (or if both are
# at the exact same time and are in the same timezone or in timezones
# related through daylight savings time such as EST and EDT), ignore the
# time gain/loss from savings time transitions IFF the variable IgnoreDST
# is on (it is by default).  Otherwise, do the calculation exactly.

# Add an option to all date calculations to ignore daylight savings time
# transitions.

### MISC

# Try to get rid of all `date` and other `UNIX COMMAND` things in Date::Manip
#    `grep ^TZ`; `date`  in Date_TimeZone

# Add to ParseDate (Rob Perelman)
#    dofw           (Friday == &Date_GetNext("today","friday",0,"00:00:00")

# Document how you need to use the stock .DateManip.cnf file when running
# the tests.  Make sure that TZ=EST is set in the sample one.

# Fix Date::Manip:: Future,Past,Next,Prev

# Clean up ParseDate

# Clean up ParseDateDelta

# Combine GetNext and GetPrev (?)

# Make err an optional argument to DateCalc (by checking to see if the
# 3rd argument exists).  If it does and is a reference, it is err, otherwise,
# it is mode.

# Add a "SPECIAL HOLIDAY" section to fully specify holidays so weird ones
# can be defined for each year.  Add Easter calculations here as well:
#   Easter = easter
# means that Easter is calculated using the method easter.

# Add
#   Spanish
#   German
#   Italian
#   Japanese (Kevin Baker will help)

# Fill in some of the language variables ($past, $future, $zones).

# Check Swedish/French special characters.

# Change EXPORT to EXPORT_OK (message 9 by Peter Bray)

# Add equivalent of UnixDate to print out Deltas in various formats
# (mess 37 by Alan Burlison).  Nothing fancy.
#
# It prints out exact deltas as:
#    plus/minus d:h:mn:s
#    plus/minus s         (converted to s)
#    plus/minus d         (converted to d, returned as a floating point)
#    plus/minus h         (similar)
#    plus/minus mn        (similar)
# Approximate deltas as:
#    plus/minus y:m  plus/minus d:h:m:s
#    or, you can give a date as an argument which says take the approx.
#    delta from that date and turn the result into an exact delta which
#    can be printed in any of the exact formats.

################ MAYBE (undecided whether it should be added)

# Mike Bassman (mess 49)
#    "friday before last"

# $Date problems with RCS (mess 35 by Tim Freeman)

# Add "delta FROM date", "IN delta ON date", "delta AGO ON date"

########################################################################
########################################################################
#
# Declare variables so we don't get any warnings about variables only
# being used once.  In Date_Init, I often define a whole batch of related
# variables knowing that I only have immediate use for some of them but
# I may need others in the future.  To avoid the "Identifier XXX used only
# once: possibly typo" warnings, all are declared here.
#
# Pacakge Variables
#

$Date::Manip::Am = undef;
$Date::Manip::AmExp = undef;
$Date::Manip::AmPmExp = undef;
$Date::Manip::Approx = undef;
$Date::Manip::At = undef;
$Date::Manip::Business = undef;
$Date::Manip::Curr = undef;
$Date::Manip::CurrAmPm = undef;
$Date::Manip::CurrD = undef;
$Date::Manip::CurrH = undef;
$Date::Manip::CurrHolidayYear = 0;
$Date::Manip::CurrM = undef;
$Date::Manip::CurrMn = undef;
$Date::Manip::CurrS = undef;
$Date::Manip::CurrY = undef;
$Date::Manip::CurrZoneExp = undef;
$Date::Manip::DExp = undef;
$Date::Manip::DayExp = undef;
$Date::Manip::Exact = undef;
$Date::Manip::Future = undef;
$Date::Manip::HExp = undef;
$Date::Manip::In = undef;
$Date::Manip::Init = 0;
$Date::Manip::InitDone = 0;
$Date::Manip::InitFilesRead = 0;
$Date::Manip::MExp = undef;
$Date::Manip::MnExp = undef;
$Date::Manip::Mode = undef;
$Date::Manip::MonExp = undef;
$Date::Manip::Next = undef;
$Date::Manip::Now = undef;
$Date::Manip::Offset = undef;
$Date::Manip::On = undef;
$Date::Manip::Past = undef;
$Date::Manip::Pm = undef;
$Date::Manip::PmExp = undef;
$Date::Manip::Prev = undef;
$Date::Manip::ResetWorkDay = 1;
$Date::Manip::SepHM = undef;
$Date::Manip::SepMS = undef;
$Date::Manip::SepSS = undef;
$Date::Manip::SExp = undef;
$Date::Manip::TimesExp = undef;
$Date::Manip::UpdateHolidays = 0;
$Date::Manip::WDBh = undef;
$Date::Manip::WDBm = undef;
$Date::Manip::WDEh = undef;
$Date::Manip::WDEm = undef;
$Date::Manip::WDlen = undef;
$Date::Manip::WExp = undef;
$Date::Manip::WhichExp = undef;
$Date::Manip::WkExp = undef;
$Date::Manip::YExp = undef;
$Date::Manip::ZoneExp = undef;

@Date::Manip::Day = ();
@Date::Manip::Mon = ();
@Date::Manip::Month = ();
@Date::Manip::W = ();
@Date::Manip::Week = ();
@Date::Manip::Wk = ();

%Date::Manip::AmPm = ();
%Date::Manip::CurrHolidays = ();
%Date::Manip::CurrZone = ();
%Date::Manip::Day = ();
%Date::Manip::Holidays = ();
%Date::Manip::Month = ();
%Date::Manip::Offset = ();
%Date::Manip::Times = ();
%Date::Manip::Replace = ();
%Date::Manip::Week = ();
%Date::Manip::Which = ();
%Date::Manip::Zone = ();

########################################################################
########################################################################

sub DateManipVersion {
  return $Date::Manip::Version;
}

sub Date_SetTime {
  my($date,$h,$mn,$s)=@_;
  &Date_Init()  if (! $Date::Manip::InitDone);
  my($y,$m,$d)=();

  if (! &CheckDate($date)) {
    $date=&ParseDate($date);
    return ""  if (! $date);
  }

  ($y,$m,$d)=( &CheckDate($date) )[0..2];
  ($h,$mn,$s)=&ParseTime($h,$mn,$s);

  my($ampm,$wk);
  return ""  if (&Date_ErrorCheck(\$y,\$m,\$d,\$h,\$mn,\$s,\$ampm,\$wk));
  &FormDate($y,$m,$d,$h,$mn,$s);
}

sub Date_GetPrev {
  my($date,$day,$today,$hr,$min,$sec)=@_;
  &Date_Init()  if (! $Date::Manip::InitDone);
  my($y,$m,$d,$h,$mn,$s,$err)=();

  if (! &CheckDate($date)) {
    $date=&ParseDate($date);
    return ""  if (! $date);
  }
  ($y,$m,$d)=( &CheckDate($date) )[0..2];

  if (defined $day and $day ne "") {
    my($day_w)=();
    my($date_w)=&Date_DayOfWeek($m,$d,$y);
    my(%days)=%Date::Manip::Week;
    if (&IsInt($day)) {
      $day_w=$day;
    } else {
      return ""  if (! exists $days{lc($day)});
      $day_w=$days{lc($day)};
    }
    if ($day_w == $date_w) {
      $date=&DateCalc_DateDelta($date,"-0:0:7:0:0:0",\$err,0)  if (! $today);
    } else {
      $day_w -= 7  if ($day_w>$date_w); # make sure previous day is less
      $day = $date_w - $day_w;
      $date=&DateCalc_DateDelta($date,"-0:0:$day:0:0:0",\$err,0);
    }
    $date=&Date_SetTime($date,$hr,$min,$sec)  if (defined $hr);

  } else {
    ($h,$mn,$s)=( &CheckDate($date) )[3..5];
    my($delta,$d,$err)=();
    my($th,$tm,$ts)=&ParseTime($hr,$min,$sec);
    if (defined $hr and $hr ne "") {
      ($hr,$min,$sec)=($th,$tm,$ts);
      $delta="-0:0:1:0:0:0";
    } elsif (defined $min and $min ne "") {
      ($hr,$min,$sec)=($h,$tm,$ts);
      $delta="-0:0:0:1:0:0";
    } elsif (defined $sec and $sec ne "") {
      ($hr,$min,$sec)=($h,$mn,$ts);
      $delta="-0:0:0:0:1:0";
    } else {
      confess "ERROR: invalid arguments in Date_GetPrev.\n";
    }

    $d=&Date_SetTime($date,$hr,$min,$sec);
    if ($today) {
      $d=&DateCalc_DateDelta($d,$delta,\$err,0)  if ($d gt $date);
    } else {
      $d=&DateCalc_DateDelta($d,$delta,\$err,0)  if ($d ge $date);
    }
    $date=$d;
  }
  return $date;
}

sub Date_GetNext {
  my($date,$day,$today,$hr,$min,$sec)=@_;
  &Date_Init()  if (! $Date::Manip::InitDone);
  my($y,$m,$d,$h,$mn,$s,$err)=();

  if (! &CheckDate($date)) {
    $date=&ParseDate($date);
    return ""  if (! $date);
  }
  ($y,$m,$d)=( &CheckDate($date) )[0..2];

  if (defined $day and $day ne "") {
    my($day_w)=();
    my($date_w)=&Date_DayOfWeek($m,$d,$y);
    my(%days)=%Date::Manip::Week;
    if (&IsInt($day)) {
      $day_w=$day;
    } else {
      return ""  if (! exists $days{lc($day)});
      $day_w=$days{lc($day)};
    }
    if ($day_w == $date_w) {
      $date=&DateCalc_DateDelta($date,"+0:0:7:0:0:0",\$err,0)  if (! $today);
    } else {
      $date_w -= 7  if ($date_w>$day_w); # make sure next date is greater
      $day = $day_w - $date_w;
      $date=&DateCalc_DateDelta($date,"+0:0:$day:0:0:0",\$err,0);
    }
    $date=&Date_SetTime($date,$hr,$min,$sec)  if (defined $hr);

  } else {
    ($h,$mn,$s)=( &CheckDate($date) )[3..5];
    my($delta,$d,$err)=();
    my($th,$tm,$ts)=&ParseTime($hr,$min,$sec);
    if (defined $hr and $hr ne "") {
      ($hr,$min,$sec)=($th,$tm,$ts);
      $delta="+0:0:1:0:0:0";
    } elsif (defined $min and $min ne "") {
      ($hr,$min,$sec)=($h,$tm,$ts);
      $delta="+0:0:0:1:0:0";
    } elsif (defined $sec and $sec ne "") {
      ($hr,$min,$sec)=($h,$mn,$ts);
      $delta="+0:0:0:0:1:0";
    } else {
      confess "ERROR: invalid arguments in Date_GetNext.\n";
    }

    $d=&Date_SetTime($date,$hr,$min,$sec);
    if ($today) {
      $d=&DateCalc_DateDelta($d,$delta,\$err,0)  if ($d lt $date);
    } else {
      $d=&DateCalc_DateDelta($d,$delta,\$err,0)  if ($d le $date);
    }
    $date=$d;
  }

  return $date;
}

sub DateCalc {
  my($D1,$D2,$errref,$mode)=@_;
  my(@date,@delta,$ret,$tmp)=();

  if (defined $mode  and  $mode>=0  and  $mode<=2) {
    $Date::Manip::Mode=$mode;
  } else {
    $Date::Manip::Mode=0;
  }

  if ($tmp=&ParseDate($D1)) {
    push(@date,$tmp);
  } elsif ($tmp=&ParseDateDelta($D1)) {
    push(@delta,$tmp);
  } else {
    $$errref=1;
    return;
  }

  if ($tmp=&ParseDate($D2)) {
    push(@date,$tmp);
  } elsif ($tmp=&ParseDateDelta($D2)) {
    push(@delta,$tmp);
  } else {
    $$errref=2;
    return;
  }
  $mode=$Date::Manip::Mode;

  if ($#date==1) {
    $ret=&DateCalc_DateDate(@date,$mode);
  } elsif ($#date==0) {
    $ret=&DateCalc_DateDelta(@date,@delta,$errref,$mode);
  } else {
    $ret=&DateCalc_DeltaDelta(@delta,$mode);
  }
  $ret;
}

sub ParseDateDelta {
  my($args,@args,@a,$ref,$date)=();
  local($_)=();
  @a=@_;

  # @a : is the list of args to ParseDateDelta.  Currently, only one argument
  #      is allowed and it must be a scalar (or a reference to a scalar)
  #      or a reference to an array.

  if ($#a!=0) {
    print "ERROR:  Invalid number of arguments to ParseDateDelta.\n";
    return "";
  }
  $args=$a[0];
  $ref=ref $args;
  if (! $ref) {
    @args=($args);
  } elsif ($ref eq "ARRAY") {
    @args=@$args;
  } elsif ($ref eq "SCALAR") {
    @args=($$args);
  } else {
    print "ERROR:  Invalid arguments to ParseDateDelta.\n";
    return "";
  }
  @a=@args;

  # @args : a list containing all the arguments (dereferenced if appropriate)
  # @a    : a list containing all the arguments currently being examined
  # $ref  : nil, "SCALAR", or "ARRAY" depending on whether a scalar, a
  #         reference to a scalar, or a reference to an array was passed in
  # $args : the scalar or refererence passed in

  my($y,$m,$w,$d,$h,$mn,$s,$ys,$ms,$ws,$ds,$hs,$mns,$ss,$dir)=();
  my($def,@delta1,@delta2,$colon,$sign,$delta,$i,$sign)=();
  my($from,$to)=();
  my($workweek)=$Date::Manip::WorkWeekEnd-$Date::Manip::WorkWeekBeg+1;

  &Date_Init();
  my($signexp)='([+-]?)';
  my($numexp)='(\d+)';
  my($exp1)="(?: \\s* $signexp \\s* $numexp \\s*)";
  my($yexp,$mexp,$wexp,$dexp,$hexp,$mnexp,$sexp)=();
  $yexp =$mexp=$wexp=$dexp=$hexp=$mnexp=$sexp="()()";
  $yexp ="(?: $exp1 $Date::Manip::YExp)?"  if ($Date::Manip::YExp);
  $mexp ="(?: $exp1 $Date::Manip::MExp)?"  if ($Date::Manip::MExp);
  $wexp ="(?: $exp1 $Date::Manip::WExp)?"  if ($Date::Manip::WExp);
  $dexp ="(?: $exp1 $Date::Manip::DExp)?"  if ($Date::Manip::DExp);
  $hexp ="(?: $exp1 $Date::Manip::HExp)?"  if ($Date::Manip::HExp);
  $mnexp="(?: $exp1 $Date::Manip::MnExp)?" if ($Date::Manip::MnExp);
  $sexp ="(?: $exp1 $Date::Manip::SExp)?"  if ($Date::Manip::SExp);
  my($future)=$Date::Manip::Future;
  my($past)=$Date::Manip::Past;

  $delta="";
  PARSE: while (@a) {
    $_ = join(" ",@a);
    s/\s*$//;

    # Mode is set in DateCalc.  ParseDateDelta only overrides it if the
    # string contains a mode.
    if      ($Date::Manip::Exact and s/$Date::Manip::Exact//) {
      $Date::Manip::Mode=0;
    } elsif ($Date::Manip::Approx and s/$Date::Manip::Approx//) {
      $Date::Manip::Mode=1;
    } elsif ($Date::Manip::Business and s/$Date::Manip::Business//) {
      $Date::Manip::Mode=2;
    } elsif (! defined $Date::Manip::Mode) {
      $Date::Manip::Mode=0;
    }
    $workweek=7  if ($Date::Manip::Mode != 2);

    foreach $from (keys %Date::Manip::Replace) {
      $to=$Date::Manip::Replace{$from};
      s/(^|[^a-z])$from($|[^a-z])/$1$to$2/i;
    }

    # in or ago
    s/^\s* $future \s*//ix  if ($future ne "(?:)");
    $dir=1;
    $dir=-1  if ($past  and  s/\s*$past\s*//i);

    # the colon part of the delta
    $colon="";
    if (s/$signexp?$numexp?(:($signexp?$numexp)?)+$//) {
      $colon=$&;
      s/\s*$//;
    }

    # the non-colon part of the delta
    $sign="+";
    s/^$yexp $mexp $wexp $dexp $hexp $mnexp $sexp$//xi;
    ($ys,$y,$ms,$m,$ws,$w,$ds,$d,$hs,$h,$mns,$mn,$ss,$s)=
      ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14);
    (defined($ys)  and $ys)  ? ($sign=$ys)  : ($ys=$sign);
    (defined($ms)  and $ms)  ? ($sign=$ms)  : ($ms=$ys);
    (defined($ws)  and $ws)  ? ($sign=$ws)  : ($ws=$ms);
    (defined($ds)  and $ds)  ? ($sign=$ds)  : ($ds=$ws);
    (defined($hs)  and $hs)  ? ($sign=$hs)  : ($hs=$ds);
    (defined($mns) and $mns) ? ($sign=$mns) : ($mns=$hs);
    (defined($ss)  and $ss)  ? ($sign=$ss)  : ($ss=$ms);

    # keep track of the last defined element (from -1 to 5)
    $def=-1;
    (defined($y))  ? ($def=0) : ($y=0);
    (defined($m))  ? ($def=1) : ($m=0);
    (defined($d))  ? ($def=2) : ($d=0);
    (defined($h))  ? ($def=3) : ($h=0);
    (defined($mn)) ? ($def=4) : ($mn=0);
    (defined($s))  ? ($def=5) : ($s=0);

    # add weeks to the days
    if (defined $w  and  $w) {
      $d= "$ds$d" + $workweek*"$ws$w";
      if ($d<0) {
        $ds="-";
        $d=-$d;
      }
    }

    @delta1=("$ys$y","$ms$m","$ds$d","$hs$h","$mns$mn","$ss$s");

    # Split the colon part and set the sign
    @delta2=&CheckDelta($colon,$sign);

    # check to see that too many fields have not been entered and that
    # the entire argument list has been used
    if ($_ or ($def+$#delta2)>4) {
      pop(@a);
      next PARSE;
    }

    # add the colon and non-colon part together (and take care of dir)
    # (force it to carry a sign)
    unshift (@delta2,"+0")  while ($#delta2<5);
    for ($i=0; $i<=5; $i++) {
      $delta1[$i] += $delta2[$i];
      $delta1[$i] *= $dir  if ($delta1[$i] != 0);
      $delta1[$i] = "+".$delta1[$i]  if ($delta1[$i]>0);
    }

    # form the delta and shift off the valid part
    $delta=join(":",@delta1);
    splice(@args,0,$#a+1);
    @$args=@args  if (defined $ref  and  $ref eq "ARRAY");
    last PARSE;
  }

  $delta=&NormalizeDelta($delta,$Date::Manip::Mode);
  return $delta;
}

sub UnixDate {
  my($date,@format)=@_;
  local($_)=();
  my($format,%f,$out,@out,$c,$date1,$date2)=();
  my($scalar)=();
  $date=&ParseDate($date);
  return  if (! $date);

  ($f{"Y"},$f{"m"},$f{"d"},$f{"H"},$f{"M"},$f{"S"})=&CheckDate($date);
  $f{"y"}=substr $f{"Y"},2;
  my($m,$d,$y)=($f{"m"},$f{"d"},$f{"Y"});
  &Date_Init();

  if (! wantarray) {
    $format=join(" ",@format);
    @format=($format);
    $scalar=1;
  }

  # month, week
  $_=$m;
  s/^0//;
  $f{"b"}=$f{"h"}=$Date::Manip::Mon[$_-1];
  $f{"B"}=$Date::Manip::Month[$_-1];
  $_=$m;
  s/^0/ /;
  $f{"f"}=$_;
  $f{"U"}=&Date_WeekOfYear($m,$d,$y,0);
  $f{"W"}=&Date_WeekOfYear($m,$d,$y,1);
  $f{"U"}="0".$f{"U"}  if (length $f{"U"} < 2);
  $f{"W"}="0".$f{"W"}  if (length $f{"W"} < 2);

  # day
  $f{"j"}=&Date_DayOfYear($m,$d,$y);
  $_=$d;
  s/^0/ /;
  $f{"e"}=$_;
  $f{"w"}=&Date_DayOfWeek($m,$d,$y);
  $f{"v"}=$Date::Manip::W[$f{"w"}];
  $f{"v"}=" ".$f{"v"}  if (length $f{"v"} < 2);
  $f{"a"}=$Date::Manip::Wk[$f{"w"}];
  $f{"A"}=$Date::Manip::Week[$f{"w"}];
  $f{"E"}=&Date_DaySuffix($f{"e"});

  # hour
  $_=$f{"H"};
  s/^0/ /;
  $f{"k"}=$_;
  $f{"i"}=$f{"k"}+1;
  $f{"i"}=$f{"k"};
  $f{"i"}=12          if ($f{"k"}==0);
  $f{"i"}=$f{"k"}-12  if ($f{"k"}>12);
  $f{"i"}=$f{"i"}-12  if ($f{"i"}>12);
  $f{"i"}=" ".$f{"i"} if (length($f{"i"})<2);
  $f{"I"}=$f{"i"};
  $f{"I"}=~ s/^ /0/;
  $f{"p"}=$Date::Manip::Am;
  $f{"p"}=$Date::Manip::Pm  if ($f{"k"}>11);

  # minute, second, timezone
  $f{"o"}=&Date_SecsSince1970($m,$d,$y,$f{"H"},$f{"M"},$f{"S"});
  $f{"s"}=&Date_SecsSince1970GMT($m,$d,$y,$f{"H"},$f{"M"},$f{"S"});
  $f{"z"}=$f{"Z"}=
    ($Date::Manip::ConvTZ eq "IGNORE" or $Date::Manip::ConvTZ eq "" ?
     $Date::Manip::TZ : $Date::Manip::ConvTZ);

  # date, time
  $f{"c"}=qq|$f{"a"} $f{"b"} $f{"e"} $f{"H"}:$f{"M"}:$f{"S"} $y|;
  $f{"C"}=$f{"u"}=
    qq|$f{"a"} $f{"b"} $f{"e"} $f{"H"}:$f{"M"}:$f{"S"} $f{"z"} $y|;
  $f{"g"}=qq|$f{"a"},$d $f{"b"} $y $f{"H"}:$f{"M"}:$f{"S"} $f{"z"}|;
  $f{"D"}=$f{"x"}=qq|$m/$d/$f{"y"}|;
  $f{"r"}=qq|$f{"I"}:$f{"M"}:$f{"S"} $f{"p"}|;
  $f{"R"}=qq|$f{"H"}:$f{"M"}|;
  $f{"T"}=$f{"X"}=qq|$f{"H"}:$f{"M"}:$f{"S"}|;
  $f{"V"}=qq|$m$d$f{"H"}$f{"M"}$f{"y"}|;
  $f{"Q"}="$y$m$d";
  $f{"q"}=qq|$y$m$d$f{"H"}$f{"M"}$f{"S"}|;
  $f{"P"}=qq|$y$m$d$f{"H"}:$f{"M"}:$f{"S"}|;
  $f{"F"}=qq|$f{"A"}, $f{"B"} $f{"e"}, $f{"Y"}|;
  # %l is a special case.  Since it requires the use of the calculator
  # which requires this routine, an infinite recursion results.  To get
  # around this, %l is NOT determined every time this is called so the
  # recursion breaks.

  # other formats
  $f{"n"}="\n";
  $f{"t"}="\t";
  $f{"%"}="%";
  $f{"+"}="+";

  foreach $format (@format) {
    $format=reverse($format);
    $out="";
    while ($format) {
      $c=chop($format);
      if ($c eq "%") {
        $c=chop($format);
        if ($c eq "l") {
          $date1=&DateCalc_DateDelta($Date::Manip::Curr,"-0:6:0:0:0:0");
          $date2=&DateCalc_DateDelta($Date::Manip::Curr,"+0:6:0:0:0:0");
          if ($date gt $date1  and  $date lt $date2) {
            $f{"l"}=qq|$f{"b"} $f{"e"} $f{"H"}:$f{"M"}|;
          } else {
            $f{"l"}=qq|$f{"b"} $f{"e"}  $f{"Y"}|;
          }
          $out .= $f{"$c"};
        } elsif (exists $f{"$c"}) {
          $out .= $f{"$c"};
        } else {
          $out .= $c;
        }
      } else {
        $out .= $c;
      }
    }
    push(@out,$out);
  }
  if ($scalar) {
    return $out[0];
  } else {
    return (@out);
  }
}

sub ParseDate {
  my($args,@args,@a,$ref,$date)=();
  local($_)=();
  @a=@_;
  my($y,$m,$d,$h,$mn,$s,$i,$which,$dofw,$wk,$tmp,$z,$num,$err)=();

  # @a : is the list of args to ParseDate.  Currently, only one argument
  #      is allowed and it must be a scalar (or a reference to a scalar)
  #      or a reference to an array.

  if ($#a!=0) {
    print "ERROR:  Invalid number of arguments to ParseDate.\n";
    return "";
  }
  $args=$a[0];
  $ref=ref $args;
  if (! $ref) {
    return $args  if (&CheckDate($args));
    @args=($args);
  } elsif ($ref eq "ARRAY") {
    @args=@$args;
  } elsif ($ref eq "SCALAR") {
    return $$args  if (&CheckDate($$args));
    @args=($$args);
  } else {
    print "ERROR:  Invalid arguments to ParseDate.\n";
    return "";
  }
  @a=@args;

  # @args : a list containing all the arguments (dereferenced if appropriate)
  # @a    : a list containing all the arguments currently being examined
  # $ref  : nil, "SCALAR", or "ARRAY" depending on whether a scalar, a
  #         reference to a scalar, or a reference to an array was passed in
  # $args : the scalar or refererence passed in

  &Date_Init();
  my($type)=$Date::Manip::DateFormat;
  my($mmm)=$Date::Manip::MonExp;
  my($now)=$Date::Manip::Now;
  my($offset)=$Date::Manip::Offset;
  my($wkexp)=$Date::Manip::WkExp;
  my($timeexp)=$Date::Manip::TimesExp;
  my(%dofw)=%Date::Manip::Week;
  my($whichexp)=$Date::Manip::WhichExp;
  my(%which)=%Date::Manip::Which;
  my($daysexp)=$Date::Manip::DayExp;
  my(%dayshash)=%Date::Manip::Day;
  my($ampm)=$Date::Manip::AmPmExp;
  my($weeks)=$Date::Manip::WExp;
  my($next)=$Date::Manip::Next;
  my($prev)=$Date::Manip::Prev;
  my($ago)=$Date::Manip::Past;

  # Regular expressions for part of the date
  my($hm)=$Date::Manip::SepHM;
  my($ms)=$Date::Manip::SepMS;
  my($ss)=$Date::Manip::SepSS;
  my($YY) ='(\d{2}|\d{4})'; # 2 or 4 digits (year)
  my($DD)='(\d{2})';        # 2 digits      (month/day/hour/minute/second)
  my($D) ='(\d{1,2})';      # 1 or 2 digit  (month/day/hour)
  my($FD)="(?:$ss\\d+)?";   # fractional secs
  # There are two forms of the time.  Time/time are used when the time is
  # not the last element of the string.  TimeL/timeL are used when the time
  # is the last element.
  my($zone)=$Date::Manip::ZoneExp;
  # time in HH:MM:SS [Zone]
  my($Time) ="(?:$DD$hm$DD(?:$ms$DD$FD)?(?:\\s*$ampm)?$zone)";
  # time in hh:MM:SS [Zone]
  my($time) ="(?:$D$hm$DD(?:$ms$DD$FD)?(?:\\s*$ampm)?$zone)";
  my($sep)='([\/ .-])';
  my($at)='\s*'.$Date::Manip::At;
  my($in)='\s*'.$Date::Manip::In;
  my($on)='\s*'.$Date::Manip::On;
  my($com)=',?';

  $ampm="";

  $date="";
  PARSE: while($#a>=0) {
    $_=join(" ",@a);

    # Mode is set in DateCalc.  ParseDate only overrides it if the string
    # contains a mode.
    if      ($Date::Manip::Exact and s/$Date::Manip::Exact//) {
      $Date::Manip::Mode=0;
    } elsif ($Date::Manip::Approx and s/$Date::Manip::Approx//) {
      $Date::Manip::Mode=1;
    } elsif ($Date::Manip::Business and s/$Date::Manip::Business//) {
      $Date::Manip::Mode=2;
    } elsif (! defined $Date::Manip::Mode) {
      $Date::Manip::Mode=0;
    }

    # Substitute all special time expressions.
    if ($timeexp ne "()"  and  /$timeexp/i) {
      $tmp=$1;
      $tmp=$Date::Manip::Times{$tmp};
      s/$timeexp/ $tmp /;
    }

    $tmp=0;
    if (/^\s*$whichexp\s*$wkexp$in$mmm\s*$YY?(?:$at$time)?\s*$/i) {
      # last friday in October 95
      ($which,$dofw,$m,$y,$h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6,$7,$8,$9);
      # fix $m, $y
      &Date_ErrorCheck(\$y,\$m,\$d,\$h,\$mn,\$s,\$ampm,\$wk);
      $dofw=$dofw{lc($dofw)};
      $which=$which{lc($which)};
      # Get the first day of the month
      if ($Date::Manip::DateFormat eq "US") {
        $date=&ParseDate("$m 1 $y $h:$mn:$s");
      } else {
        $date=&ParseDate("1 $m $y $h:$mn:$s");
      }
      if ($which==-1) {
        $date=&DateCalc_DateDelta($date,"+0:1:0:0:0:0",\$err,0);
        $date=&Date_GetPrev($date,$dofw,0);
      } else {
        for ($i=0; $i<$which; $i++) {
          if ($i==0) {
            $date=&Date_GetNext($date,$dofw,1);
          } else {
            $date=&Date_GetNext($date,$dofw,0);
          }
          $date="err", last PARSE  if (! $date);
        }
      }
      last PARSE;

    } elsif (/^\s*$next\s*$wkexp\s*(?:$at$time)?\s*$/i) {
      # next friday
      ($dofw,$h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6);
      $date=&Date_GetNext($Date::Manip::Curr,$dofw,0,$h,$mn,$s);
      last PARSE;

    } elsif (/^\s*$prev\s*$wkexp\s*(?:$at$time)?\s*$/i) {
      # last friday
      ($dofw,$h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6);
      $date=&Date_GetPrev($Date::Manip::Curr,$dofw,0,$h,$mn,$s);
      last PARSE;

    } elsif (/^\s*$next\s*$weeks\s*(?:$at$time)?\s*$/i) {
      # next week
      ($h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6);
      $date=&DateCalc_DateDelta($Date::Manip::Curr,"+0:0:7:0:0:0",\$err,0);
      $date=&Date_SetTime($date,$h,$mn,$s)  if (defined $h);
      last PARSE;
    } elsif (/^\s*$prev\s*$weeks\s*(?:$at$time)?\s*$/i) {
      # last week
      ($h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6);
      $date=&DateCalc_DateDelta($Date::Manip::Curr,"-0:0:7:0:0:0",\$err,0);
      $date=&Date_SetTime($date,$h,$mn,$s)  if (defined $h);
      last PARSE;

    } elsif (/^\s*$in\s*(\d+)\s*$weeks\s*(?:$at$time)?\s*$/i) {
      # in 2 weeks
      ($num,$h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6);
      $date=&DateCalc_DateDelta($Date::Manip::Curr,"+0:0:" .7*$num. ":0:0:0",
                                \$err,0);
      $date=&Date_SetTime($date,$h,$mn,$s)  if (defined $h);
      last PARSE;
    } elsif (/^\s*(\d+)\s*$weeks\s*$ago\s*(?:$at$time)?\s*$/i) {
      # 2 weeks ago
      ($num,$h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6);
      $date=&DateCalc_DateDelta($Date::Manip::Curr,"-0:0:" .7*$num. ":0:0:0",
                               \$err,0);
      $date=&Date_SetTime($date,$h,$mn,$s)  if (defined $h);
      last PARSE;

    } elsif (/^\s*$wkexp\s*$in\s*(\d+)\s*$weeks(?:$at$time)?\s*$/i) {
      # friday in 2 weeks
      ($dofw,$num,$h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6,$7);
      $tmp="+";
    } elsif (/^\s*$wkexp\s*(\d+)\s*$weeks\s*$ago(?:$at$time)?\s*$/i) {
      # friday 2 weeks ago
      ($dofw,$num,$h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6,$7);
      $tmp="-";
    } elsif (/^\s*$in\s*(\d+)\s*$weeks$on$wkexp(?:$at$time)?\s*$/i) {
      # in 2 weeks on friday
      ($num,$dofw,$h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6,$7);
      $tmp="+"
    } elsif (/^\s*(\d+)\s*$weeks\s*$ago$on$wkexp(?:$at$time)?\s*$/i) {
      # 2 weeks ago on friday
      ($num,$dofw,$h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6,$7);
      $tmp="-";
    }
    if ($tmp) {
      $date=&DateCalc_DateDelta($Date::Manip::Curr,
                                $tmp . "0:0:" .7*$num. ":0:0:0",\$err,0);
      $date=&Date_GetPrev($date,$Date::Manip::FirstDay,1);
      $date=&Date_GetNext($date,$dofw,1,$h,$mn,$s);
      last PARSE;
    }

    # Change 2nd, second to 2
    if (/$daysexp/i) {
      $tmp=lc($1);
      $tmp=$dayshash{"$tmp"};
      s/\s*$daysexp\s*/ $tmp /;
      s/^\s+//;
      s/\s+$//;
    }

    $tmp=0;
    if (/^\s*$D\s*$wkexp\s*(?:$in?\s*$YY)?(?:\s*$at?\s*$time)?\s*$/i) {
      # 22nd sunday [in 1996] [at 12:00]
      ($which,$dofw,$y,$h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6,$7,$8);
      $tmp=1;
    } elsif (/^\s*$wkexp\s*$weeks\s*$D(?:$in?\s*$YY)?(?:\s*$at?\s*$time)?\s*$/i) {
      # sunday week 22 [in 1996] [at 12:00]
      ($dofw,$which,$y,$h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6,$7,$8);
      $tmp=1;
    } elsif (/^\s*$wkexp\s*$D\s*$weeks(?:$in?\s*$YY)?(?:\s*$at?\s*$time)?\s*$/i) {
      # sunday 22nd week [in 1996] [at 12:00]
      ($dofw,$which,$y,$h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6,$7,$8);
      $tmp=1;
    }
    if ($tmp) {
      $y=""  if (! defined $y);
      $date=&ParseDate("1 1 $y");
      $date=&Date_GetNext($date,$dofw,1);
      $date=&DateCalc_DateDelta($date,"+0:0:". ($which-1)*7 . ":0:0:0",\$err,0)
        if ($which>1);
      $date=&Date_SetTime($date,$h,$mn,$s)  if (defined $h);
      last PARSE;
    }

    if ($wkexp ne "()" and /$wkexp/i) {
      $wk=$1;
      s/$wkexp$com/ /i;
    }
    s/\s+/ /g;                  # all whitespace are now a single space
    s/^\s+//;
    s/\s+$//;

    if (/^$YY$DD$DD$at?$Time?$/i) {
      # DateTime
      #    Date=YYMMDD
      ($y,$m,$d,$h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6,$7,$8);

    } elsif (/^(\d{4})$DD$DD$DD$DD$DD$/i) {
      # YYYYMMDDHHMNSS
      ($y,$m,$d,$h,$mn,$s)=($1,$2,$3,$4,$5,$6);

    } elsif (/^$D$sep$D(?:\2$YY)?(?:(?:$com\s+|$com$at|\2)$time)?$/i) {
      # Date Time
      # Date%Time
      #   Date=mm%dd, mm%dd%YY
      ($m,$d,$y,$h,$mn,$s,$ampm,$z)=($1,$3,$4,$5,$6,$7,$8,$9);
      ($m,$d)=($d,$m)  if ($type ne "US");

    } elsif (/^$mmm$sep$D(?:(?:$com\s*|\2)$YY)?$com(?:(?:\s+|$at)$time)?$/i) {
      # Date Time
      #   Date=mmm%dd mmm%dd%YY
      ($m,$d,$y,$h,$mn,$s,$ampm,$z)=($1,$3,$4,$5,$6,$7,$8,$9);

    } elsif (/^$mmm$sep$D(?:\2$YY)?(?:\2$time)?$/i) {
      # Date%Time
      #   Date=mmm%dd mmm%dd%YY
      ($m,$d,$y,$h,$mn,$s,$ampm,$z)=($1,$3,$4,$5,$6,$7,$8,$9);

    } elsif (/^$D$sep*$mmm(?:(?:$com\s*|\2)$YY)?$com(?:(?:\s+|$at)$time)?$/i) {
      # Date Time
      #   Date=dd%mmm, dd%mmm%YY
      ($d,$m,$y,$h,$mn,$s,$ampm,$z)=($1,$3,$4,$5,$6,$7,$8,$9);

    } elsif (/^$D$sep*$mmm(?:\2$YY)?(?:\2$time)?$/i) {
      # Date%Time
      #   Date=dd%mmm, dd%mmm%YY
      ($d,$m,$y,$h,$mn,$s,$ampm,$z)=($1,$3,$4,$5,$6,$7,$8,$9);

    } elsif (/^$D\s*$mmm(?:$com\s*$YY)?$com(?:(?:\s+|$at)$time)?$/i) {
      # Date Time
      #   Date=ddmmm, ddmmmYY, ddmmm YY, dd mmmYY
      ($d,$m,$y,$h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6,$7,$8);

    } elsif (/^$mmm$D(?:$com\s*$YY)?$com(?:(?:\s+|$at)$time)?$/i) {
      # Date Time
      #   Date=mmmdd, mmmdd YY
      ($m,$d,$y,$h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6,$7,$8);

    } elsif (/^$mmm\s*$DD(?:$com$YY)?$com(?:(?:\s+|$at)$time)?$/i) {
      # Date Time
      #   Date=mmm DDYY, mmmDDYY
      ($m,$d,$y,$h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6,$7,$8);


    } elsif (/^$time$/) {
      ($h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5);

    } elsif (/^$time\s*$D$sep$D(?:\7$YY)?$/i) {
      # TimeDate
      # Time Date
      #   Date=mm%dd, mm%dd%YY
      ($h,$mn,$s,$ampm,$z,$m,$d,$y)=($1,$2,$3,$4,$5,$6,$8,$9);
      ($m,$d)=($d,$m)  if ($type ne "US");

    } elsif (/^$time$sep$D\6$D(?:\6$YY)?$/i) {
      # Time%Date
      #   Date=mm%dd mm%dd%YY
      ($h,$mn,$s,$ampm,$z,$m,$d,$y)=($1,$2,$3,$4,$5,$7,$8,$9);
      ($m,$d)=($d,$m)  if ($type ne "US");

    } elsif (/^$time\s*$mmm$sep$D(?:(?:$com\s*|\7)$YY)?$/i) {
      # TimeDate
      # Time Date
      #   Date=mmm%dd mmm%dd%YY
      ($h,$mn,$s,$ampm,$z,$m,$d,$y)=($1,$2,$3,$4,$5,$6,$8,$9);

    } elsif (/^$time$sep$mmm\6$D(?:\6$YY)?$/i) {
      # Time%Date
      #   Date=mmm%dd mmm%dd%YY
      ($h,$mn,$s,$ampm,$z,$m,$d,$y)=($1,$2,$3,$4,$5,$7,$8,$9);

    } elsif (/^$time\s*$D$sep$mmm(?:(?:$com\s*|\7)$YY)?$/i) {
      # TimeDate
      # Time Date
      #   Date=dd%mmm dd%mmm%YY
      ($h,$mn,$s,$ampm,$z,$d,$m,$y)=($1,$2,$3,$4,$5,$6,$8,$9);

    } elsif (/^$time$sep$D\6$mmm(?:\6$YY)?$/i) {
      # Time%Date
      #   Date=dd%mmm dd%mmm%YY
      ($h,$mn,$s,$ampm,$z,$d,$m,$y)=($1,$2,$3,$4,$5,$7,$8,$9);

    } elsif (/^$time\s*$mmm\s*$D(?:$com\s+$YY)?$/i) {
      # TimeDate
      # Time Date
      #   Date=mmmdd, mmmdd YY
      ($h,$mn,$s,$ampm,$z,$m,$d,$y)=($1,$2,$3,$4,$5,$6,$7,$8);

    } elsif (/^$time\s*$mmm\s*$DD$com$YY$/i) {
      # TimeDate
      # Time Date
      #   Date=mmmDDYY
      ($h,$mn,$s,$ampm,$z,$m,$d,$y)=($1,$2,$3,$4,$5,$6,$7,$8);

    } elsif (/^$time\s*$D\s*$mmm(?:$com\s*$YY)?$/i) {
      # TimeDate
      # Time Date
      #   Date=ddmmm, ddmmm YY, ddmmmYY
      ($h,$mn,$s,$ampm,$z,$d,$m,$y)=($1,$2,$3,$4,$5,$6,$7,$8);

    } elsif (/^$now$at?$time?$/i) {
      # now, today
      ($h,$mn,$s,$ampm,$z)=($2,$3,$4,$5,$6);
      $date=$Date::Manip::Curr;
      if (defined $h) {
        if (&Date_ErrorCheck(\$y,\$m,\$d,\$h,\$mn,\$s,\$ampm,\$wk)) {
          pop(@a);
          next PARSE;
        }
        $date=&Date_SetTime($date,$h,$mn,$s);
      }
      $date=&Date_ConvTZ($date,$z);
      return $date;

    } elsif (/^$mmm\s*$D\s+$time\s*$YY$/i) {
      # mmmdd time YY   (ctime format)
      ($m,$d,$h,$mn,$s,$ampm,$z,$y)=($1,$2,$3,$4,$5,$6,$7,$8);

    } elsif (/^$offset$at?$time?$/i) {
      # yesterday, tomorrow
      ($offset,$h,$mn,$s,$ampm,$z)=($1,$2,$3,$4,$5,$6);
      $offset=$Date::Manip::Offset{lc($offset)};
      $date=&DateCalc_DateDelta($Date::Manip::Curr,$offset,\$err,0);
      if (defined $h) {
        if (&Date_ErrorCheck(\$y,\$m,\$d,\$h,\$mn,\$s,\$ampm,\$wk)) {
          pop(@a);
          next PARSE;
        }
        $date=&Date_SetTime($date,$h,$mn,$s);
        $date=&Date_ConvTZ($date,$z);
      }
      return $date;

    } else {
      pop(@a);
      next PARSE;
    }

    if (&Date_ErrorCheck(\$y,\$m,\$d,\$h,\$mn,\$s,\$ampm,\$wk)) {
      pop(@a);
    } else {
      last PARSE;
    }
  }

  if ($date ne "err") {
    if (@a) {
      splice(@args,0,$#a+1);
      @$args=@args  if (defined $ref  and  $ref eq "ARRAY");
      $date=&FormDate($y,$m,$d,$h,$mn,$s)  if (! $date);
      $date=&Date_ConvTZ($date,$z);
      return $date;
    }
  }
  return "";
}

########################################################################
# OTHER SUBROUTINES
########################################################################

sub Date_DayOfWeek {
  my($m,$d,$y)=@_;
  confess "ERROR: Date_DayOfWeek requires a 4 digit year.\n"
    if ($y!~/^\d{4}$/);
  my($dayofweek,$dec31)=();

  $dec31=2;                     # Dec 31, 0999 was Tuesday
  $dayofweek=(&Date_DaysSince999($m,$d,$y)+$dec31) % 7;
  return $dayofweek;
}

sub Date_SecsSince1970 {
  my($m,$d,$y,$h,$mn,$s)=@_;
  confess "ERROR: Date_SecsSince1970 requires a 4 digit year.\n"
    if ($y!~/^\d{4}$/);
  my($sec_now,$sec_70)=();
  $sec_now=(&Date_DaysSince999($m,$d,$y)-1)*24*3600 + $h*3600 + $mn*60 + $s;
# $sec_70 =(&Date_DaysSince999(1,1,1970)-1)*24*3600;
  $sec_70 =30610224000;
  return ($sec_now-$sec_70);
}

sub Date_SecsSince1970GMT {
  my($m,$d,$y,$h,$mn,$s)=@_;
  confess "ERROR: Date_SecsSince1970GMT requires a 4 digit year.\n"
    if ($y!~/^\d{4}$/);

  my($sec)=&Date_SecsSince1970($m,$d,$y,$h,$mn,$s);
  return $sec   if ($Date::Manip::ConvTZ eq "IGNORE");

  my($tz)=$Date::Manip::ConvTZ;
  $tz=$Date::Manip::TZ  if (! $tz);
  $tz=$Date::Manip::Zone{lc($tz)}  if ($tz !~ /^[+-]\d{4}$/);

  my($tzs)=1;
  $tzs=-1 if ($tz<0);
  $tz=~/.(..)(..)/;
  my($tzh,$tzm)=($1,$2);
  $sec - $tzs*($tzh*3600+$tzm*60);
}

sub Date_DaysSince999 {
  my($m,$d,$y)=@_;
  confess "ERROR: Date_DaysSince999 requires a 4 digit year.\n"
    if ($y!~/^\d{4}$/);
  my($Ny,$N4,$N100,$N400,$dayofyear,$days)=();
  my($cc,$yy)=();

  $y=~ /(\d{2})(\d{2})/;
  ($cc,$yy)=($1,$2);

  # Number of full years since Dec 31, 0999
  $Ny=$y-1000;

  # Number of full 4th years (incl. 1000) since Dec 31, 0999
  $N4=int(($Ny-1)/4)+1;
  $N4=0         if ($y==1000);

  # Number of full 100th years (incl. 1000)
  $N100=$cc-9;
  $N100--       if ($yy==0);

  # Number of full 400th years
  $N400=int(($N100+1)/4);

  $dayofyear=&Date_DayOfYear($m,$d,$y);
  $days= $Ny*365 + $N4 - $N100 + $N400 + $dayofyear;

  return $days;
}

sub Date_DayOfYear {
  my($m,$d,$y)=@_;
  confess "ERROR: Date_DayOfYear requires a 4 digit year.\n"
    if ($y!~/^\d{4}$/);
  my(@daysinmonth)=(0,31,28,31,30,31,30,31,31,30,31,30,31);
  my($daynum,$i)=();
  $daysinmonth[2]=29  if (&Date_LeapYear($y));
  $daynum=0;
  for ($i=1; $i<$m; $i++) {
    $daynum += $daysinmonth[$i];
  }
  $daynum += $d;
  $daynum="0$daynum"   if ($daynum<10);
  $daynum="0$daynum"   if ($daynum<100);
  return $daynum;
}

sub Date_DaysInYear {
  my($y)=@_;
  confess "ERROR: Date_DaysInYear requires a 4 digit year.\n"
    if ($y!~/^\d{4}$/);
  return 366  if (&Date_LeapYear($y));
  return 365;
}

sub Date_WeekOfYear {
  my($m,$d,$y,$f)=@_;
  confess "ERROR: Date_WeekOfWeek requires a 4 digit year.\n"
    if ($y!~/^\d{4}$/);
  my($jan1)=&Date_DayOfWeek(1,1,$y); # Jan 1 is what day of week
  my($dofy)=&Date_DayOfYear($m,$d,$y);

  # Renumber the days (still 0 to 6) so that the first day of
  # the week is always 0.
  $jan1=$jan1-$f;
  $jan1+=7 if ($jan1<0);

  # Add days to the beginning of the year so that the first day
  # of this "extended" year falls on the first day of the week and
  # is numbered day 0 (rather than day 1).
  $dofy+=$jan1-1;

  return (int($dofy/7)+1);
}

sub Date_LeapYear {
  my($y)=@_;
  confess "ERROR: Date_LeapYear requires a 4 digit year.\n"
    if ($y!~/^\d{4}$/);
  return 0 unless $y % 4 == 0;
  return 1 unless $y % 100 == 0;
  return 0 unless $y % 400 == 0;
  return 1;
}

sub Date_DaySuffix {
  my($d)=@_;
  return $Date::Manip::Day[$d-1];
}

sub Date_ConvTZ {
  my($date,$from,$to)=@_;
  my($gmt)=();

  if (! defined $to  or  ! $to) {
    # 2 argument form, convert $from to $Date::Manip::ConvTZ
    return $date
      if (! defined $from  or  ! $from  or  $Date::Manip::ConvTZ eq "IGNORE");

    $to=$Date::Manip::ConvTZ  if (! defined $to  or  ! $to);
    $to=$Date::Manip::TZ  if (! $to);
  }
  if (! defined $from  or  ! $from) {
    $from=$Date::Manip::ConvTZ;
    $from=$Date::Manip::TZ  if (! $from);
  }

  $to=$Date::Manip::Zone{lc($to)}
    if (exists $Date::Manip::Zone{lc($to)});
  $from=$Date::Manip::Zone{lc($from)} 
    if (exists $Date::Manip::Zone{lc($from)});
  $gmt=$Date::Manip::Zone{gmt};

  return $date  if ($from !~ /^[+-]\d{4}$/ or $to !~ /^[+-]\d{4}$/);
  return $date  if ($from eq $to);

  my($h,$m,$err)=();
  # Convert $date from $from to GMT
  if ($from ne $gmt) {
    $from=~/([+-]\d{2})(\d{2})/;
    ($h,$m)=($1,$2);
    $h=-$h;
    $date=&DateCalc_DateDelta($date,"+0:0:0:$h:$m:00",\$err,0);
  }
  # Convert $date from GMT to $to
  if ($to ne $gmt) {
    $to=~/([+-]\d{2})(\d{2})/;
    ($h,$m)=($1,$2);
    $date=&DateCalc_DateDelta($date,"+0:0:0:$h:$m:00",\$err,0);
  }
  return $date;
}

sub Date_TimeZone {
  my($null,$tz,@tz,$std,$dst,$time,$isdst,$tmp)=();

  # Get timezones from all of the relevant places

  push(@tz,$Date::Manip::TZ)  if (defined $Date::Manip::TZ);  # TZ config var
  push(@tz,$ENV{"TZ"})        if (exists $ENV{"TZ"});         # TZ environ var
  # Microsoft operating systems don't have a date command built in.  Try
  # to trap all the various ways of knowing we are on one of these systems:
  unless ((defined $^O and
           $^O =~ /MSWin32/i ||
           $^O =~ /Windows_95/i ||
           $^O =~ /Windows_NT/i) or
          (defined $ENV{OS} and
           $ENV{OS} =~ /MSWin32/i ||
           $ENV{OS} =~ /Windows_95/i ||
           $ENV{OS} =~ /Windows_NT/i)) {
    $tz = `date`;
    chomp($tz);
    $tz=(split(/\s+/,$tz))[4];
    push(@tz,$tz);
  }
  push(@tz,$main::TZ)         if (defined $main::TZ);         # $main::TZ
  if (-s "/etc/TIMEZONE") {                                   # /etc/TIMEZONE
    ($null,$tz) = split (/\=/,`grep ^TZ /etc/TIMEZONE`);
    chomp($tz);
    $tz=~ s/\s+//g;
    push(@tz,$tz);
  }

  # Now parse each one to find the first valid one.
  foreach $tz (@tz) {
    return uc($tz)
      if (defined $Date::Manip::Zone{lc($tz)} or $tz=~/^[+-]\d{4}/);

    # Handle US/Eastern format
    if ($tz =~ /^$Date::Manip::CurrZoneExp$/i) {
      $tmp=lc $1;
      $tz=$Date::Manip::CurrZone{$tmp};
    }

    # Handle STD#DST# format
    if ($tz =~ /^([a-z]+)\d([a-z]+)\d?$/i) {
      ($std,$dst)=($1,$2);
      next  if (! defined $Date::Manip::Zone{lc($std)} or
                ! defined $Date::Manip::Zone{lc($dst)});
      $time = time();
      ($null,$null,$null,$null,$null,$null,$null,$null,$isdst) =
        localtime($time);
      return uc($dst)  if ($isdst);
      return uc($std);
    }
  }

  confess "ERROR: Date::Manip unable to determine TimeZone.\n";
}

sub Date_Init {
  my($language,$format,$tz,$convtz,@args)=@_;
  $Date::Manip::InitDone=1;
  local($_)=();
  my($internal,$firstday)=();
  my($var,$val,$file)=();

  #### Backwards compatibility junk
  if (defined $language  and  $language) {
    if ($language=~ /=/) {
      push(@args,$language);
    } else {
      push(@args,"Language=$language");
    }
  }
  if (defined $format  and  $format) {
    if ($format=~ /=/) {
      push(@args,$format);
    } else {
      push(@args,"DateFormat=$format");
    }
  }
  if (defined $tz  and  $tz) {
    if ($tz=~ /=/) {
      push(@args,$tz);
    } else {
      push(@args,"TZ=$tz");
    }
  }
  if (defined $convtz  and  $convtz) {
    if ($convtz=~ /=/) {
      push(@args,$convtz);
    } else {
      push(@args,"ConvTZ=$convtz");
    }
  }
  #### End backwards compatibility junk

  $Date::Manip::EraseHolidays=0;
  foreach (@args) {
    s/\s*$//;
    s/^\s*//;
    /^(\S+) \s* = \s* (.+)$/x;
    ($var,$val)=($1,$2);
    $Date::Manip::InitFilesRead--,
    $Date::Manip::PersonalCnf=$val,      next  if ($var eq "PersonalCnf");
    $Date::Manip::PersonalCnfPath=$val,  next  if ($var eq "PersonalCnfPath");
  }

  $Date::Manip::InitFilesRead=1  if ($Date::Manip::IgnoreGlobalCnf);
  if ($Date::Manip::InitFilesRead<1) {
    $Date::Manip::InitFilesRead=1;
    # Read Global Init file
    if ($Date::Manip::GlobalCnf) {
      $file=&ExpandTilde($Date::Manip::GlobalCnf);
    }
    &ReadInitFile($file)  if (defined $file  and  $file  and  -r $file  and
                              -s $file  and  -f $file);
  }
  if ($Date::Manip::InitFilesRead<2) {
    $Date::Manip::InitFilesRead=2;
    # Read Personal Init file
    if ($Date::Manip::PersonalCnf  and  $Date::Manip::PersonalCnfPath) {
      $file=&SearchPath($Date::Manip::PersonalCnf,
                        $Date::Manip::PersonalCnfPath,"r");
    }
    &ReadInitFile($file)  if (defined $file  and  $file  and  -r $file  and
                              -s $file  and  -f $file);
  }

  foreach (@args) {
    s/\s*$//;
    s/^\s*//;
    /^(\S+) \s* = \s* (.+)$/x;
    ($var,$val)=($1,$2);

    &Date_SetConfigVariable($var,$val);
  }

  confess "ERROR: Unknown FirstDay in Date::Manip.\n"
    if (! &IsInt($Date::Manip::FirstDay,0,6));
  confess "ERROR: Unknown WorkWeekBeg in Date::Manip.\n"
    if (! &IsInt($Date::Manip::WorkWeekBeg,0,6));
  confess "ERROR: Unknown WorkWeekEnd in Date::Manip.\n"
    if (! &IsInt($Date::Manip::WorkWeekEnd,0,6));
  confess "ERROR: Invalid WorkWeek in Date::Manip.\n"
    if ($Date::Manip::WorkWeekEnd <= $Date::Manip::WorkWeekBeg);

  my($i,$j,@tmp,@tmp2,@tmp3,$a,$b,$now,$offset,$last,$in,$at,$on,$tmp,%tmp,
     $mon,$month,@mon,@month,
     $w,$wk,$week,@w,@wk,@week,$weeks,
     $days,@days,$am,$pm,
     $zones,$zonesrfc,@zones,$times,$future,$past,$sephm,$sepms,$sepss,
     $years,$months,$days,$hours,$minutes,$seconds,$replace,$next,$prev,
     $approx,$exact,$business)=();
  my($lang)=$Date::Manip::Language;

  if (! $Date::Manip::Init) {
    $Date::Manip::Init=1;

    # Set the following variables based on the language.  They should all
    # be capitalized correctly, and any spaces appearing in the string
    # should be replaced with an underscore (_) (they will be correctly
    # parsed as spaces).

    #  $month   : space separated string containing months spelled out
    #  $mon     : space separated string containing months abbreviated
    #  $week    : space separated string containing weekdays spelled out
    #  $wk      : space separated string containing weekdays abbreviated
    #  $w       : space separated string containing weekdays very abbreviated
    #  $am,$pm  : different ways of expressing AM (PM), the first one in each
    #             list is the one that will be used when printing out an AM
    #             or PM string
    #  @days    : different ways that numbers can appear as days (first, 1st,
    #             etc.  Each element of @days has a space separated string
    #             with up to 31 values).  The first one should contain the
    #             nubers in the 1st, 2nd, etc. format.
    #  $last    : strings containing synonyms for last
    #  $years   : string containing abbreviations for the word year
    #  $months  : string containing abbreviations for the word month
    #  $weeks   : string containing abbreviations for the work week
    #  $days    : string containing abbreviations for the word day
    #  $hours   : string containing abbreviations for the word hour
    #  $minutes : string containing abbreviations for the word minute
    #  $seconds : string containing abbreviations for the word second
    #  $now     : string containing words referring to now
    #  $in      : strings fitting "1st sunday in June"
    #  $at      : strings fitting "at 12:00"
    #  $on      : strings fitting "on June 1st"
    #  $future  : strings to indicate the future
    #  $past    : strings to indicate the past
    #  $next    : strings to indicate the "next" of something
    #  $prev    : strings to indicate the "previous" of something
    #  $times   : different strings which stand for specific times and
    #             the time they translate to (ex. "noon 12:00:00")
    #  $zones   : a space separated string containing additional timezone
    #             strings (beyond the RFC 822 zones) along with their
    #             translatrion.  So, the string "EST -0500 EDT -0400"
    #             contain two time zones, EST and EDT, which have offsets
    #             of -0500 and -0400 respectively from Universal Time.
    #  $sephm   : the separator used between the hours and minutes of a time
    #  $sepms   : the separator used between the minutes and seconds of a time
    #  $sepss   : the separator used between seconds and fractional seconds
    #             NOTE:  all three of the separators can be any format suitable
    #             for a regular expression PROVIDED it does not create a
    #             back-reference.  For example, in french, the hour/minute
    #             separator might be a colon or the letter h.  This would be
    #             defined as (?::|h) or [:h] but NOT as (:|h) since the latter
    #             produces a back-reference.  Also, the dot "." should be
    #             defined as '\.' since it is in a regular expression.
    #  $approx  : strings which force approximate mode in DateCalc.
    #  $exact   : exact mode
    #  $business: business mode
    #
    # One important variable is $replace.  In English (and probably
    # other languages), one of the abbreviations for the word month that
    # would be nice is "m".  The problem is that "m" matches the "m" in
    # "minute" which causes the string to be improperly matched in some
    # cases.  Hence, the list of abbreviations for month is given as:
    #   "mon month months"
    # In order to allow you to enter "m", replacements can be done.
    # $replace is a list of pairs of words which are matched and replaced
    # AS ENTIRE WORDS".  Having $replace equal to "m month" means that
    # the entire word "m" will be replaced with "month".  This allows the
    # desired abbreviation to be used.  Make sure that $replace contains
    # an even number of words (i.e. all must be pairs).
    #
    # One other variable to set is $offset.  This contains a space separated
    # set of dates which are defined as offsets from the current time.
    #
    # If a string contains spaces, replace the space(s) with underscores.

    if ($lang eq "English") {
      $month="January February March April May June ".
        "July August September October November December";
      $mon="Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec";

      $week="Sunday Monday Tuesday Wednesday Thursday Friday Saturday";
      $wk="Sun Mon Tue Wed Thu Fri Sat";
      $w="S M T W Th F Sa";

      $days[0]="1st 2nd 3rd 4th 5th 6th 7th 8th 9th 10th 11th 12th 13th 14th ".
        "15th 16th 17th 18th 19th 20th 21st 22nd 23rd 24th 25th 26th 27th ".
        "28th 29th 30th 31st";
      $days[1]="first second third fourth fifth sixth seventh eighth ninth ".
        "tenth eleventh twelfth thirteenth fourteenth fifteenth sixteenth ".
        "seventeenth eighteenth nineteenth twentieth twenty-first ".
        "twenty-second twenty-third twenty-fourth twenty-fifth twenty-sixth ".
        "twenty-seventh twenty-eighth twenty-ninth thirtieth thirty-first";

      $last="last";
      $in="in of";
      $at="at";
      $on="on";
      $future="in";
      $past="ago";
      $next="next";
      $prev="previous last";

      $am="AM";
      $pm="PM";

      $years  ="y yr year yrs years";
      $months ="mon month months";
      $weeks  ="w wk wks week weeks";
      $days   ="d day days";
      $hours  ="h hr hrs hour hours";
      $minutes="mn min minute minutes";
      $seconds="s sec second seconds";
      $replace="m month";

      $now="today now";
      $offset="yesterday -0:0:1:0:0:0 tomorrow +0:0:1:0:0:0";
      $times="noon 12:00:00 midnight 00:00:00";

      $sephm=':';
      $sepms=':';
      $sepss='[.:]';
      $zones="";

      $exact="exactly";
      $approx="approximately";
      $business="business";

    } elsif ($lang eq "Swedish") {
      $month="Januari Februari Mars April Maj Juni ".
        "Juli Augusti September Oktober November December";
      $mon="Jan Feb Mar Apr Maj Jun Jul Aug Sep Okt Nov Dec";

      $week="Sundag Mondag Tisdag Onsdag Torsdag Fredag Lurdag";
      $wk="Sun Mon Tis Ons Tor Fre Lur";
      $w="S M Ti O To F Lu";

      $days[0]="1:a 2:a 3:e 4:e 5:e 6:e 7:e 8:e 9:e 10:e 11:e 12:e 13:e 14:e ".
        "15:e 16:e 17:e 18:e 19:e 20:e 21:a 22:a 23:e 24:e 25:e 26:e 27:e ".
        "28:e 29:e 30:e 31:a";
      $days[1]="fursta andra tredje fj=E4rde femte sj=E4tte sjunde ottonde ".
        "nionde tionde elte tolfte trettonde fjortonde femtonde sextonde ".
        "sjuttonde artonde nittonde tjugonde tjugofursta ".
        "tjugoandra tjugotredje tjugofj=E4rde tjugofemte tjugosj=E4tte ".
        "tjugosjunde tjugoottonde tjugonionde trettionde trettiofursta";

      $last="furra senaste";
      $in="om";
      $on="";
      $at="kl kl. klockan";
      $future="";
      $past="";
      $next="";
      $prev="";

      $am="FM";
      $pm="EM";

      $years  ="o or";
      $months ="mon monad monader";
      $weeks  ="";
      $days   ="d dag dagar";
      $hours  ="t tim timme timmar";
      $minutes="mn min minut minuter";
      $seconds="s sek sekund sekunder";
      $replace="m monad";

      $now="idag nu";
      $offset="igor -0:0:1:0:0:0 imorgon +0:0:1:0:0:0";
      $times="";
      $sephm='[:.]';
      $sepms=':';
      $sepss='[.:]';
      $zones="";

      $exact="";
      $approx="";
      $business="";

    } elsif ($lang eq "French") {
      $month="janvier fevrier mars avril mai juin juillet aout ".
        "septembre octobre novembre decembre";
      # NOTE: I am not sure what the abbreviation for juin and juillet are.
      $mon="jan fev mar avr mai juin juil aou sep oct nov dec";

      $week="dimanche lundi mardi mercredi jeudi vendredi samedi";
      $wk="dim lun mar mer jeu ven sam";
      $w="d l ma me j v s";

      @tmp=map { ($_."e"); } (1...31);
      $tmp[0] = "1er";
      $days[0]=join " ",@tmp;   # 1er 2e 3e ...
      $days[1]="1re";           # 1re
      $days[2]="premier deux trois quatre cinq six sept huit neuf dix onze ".
        "douze treize quatorze quinze size dix-sept dix-huit dix-neuf vingt ".
        "vingt_et_un vingt-deux vingt-trois vingt-quatre vingt-cinq ".
        "vingt-six vingt-sept vingt-huit vingt-neuf trente trente_et_un";

      $last="dernier";
      $in="en de";
      $on="";
      $at="a";
      $future="en";
      $past="il_y_a";
      $next="";
      $prev="";

      $am="du_matin";
      $pm="du_soir";

      $years  ="an annee ans annees";
      $months ="mois";
      $weeks  ="";
      $days   ="j jour jours";
      $hours  ="h heure heures";
      $minutes="mn min minute minutes";
      $seconds="s sec seconde secondes";
      $replace="m mois";

      $now="aujourd'hui maintenant";
      $offset="hier -0:0:1:0:0:0 demain +0:0:1:0:0:0";
      $times="";
      $sephm='[:h]';
      $sepms=':';
      $sepss='[.:,]';

      $zones="";

      $exact="";
      $approx="";
      $business="";

      # } elsif ($lang eq "Spanish") {
      #   $month="enero febrero marzo abril mayo junio julio agosto ".
      #     "septiembre octubre noviembre diciembre";
      #   $mon="ene feb mar abr may jun jul ago sep oct nov dic";

      #   $week="domingo lunes martes miercoles jueves viernes sabado";
      #   $wk="dom lun mar mier jue vie sab";
      #   $w="d l ma mi j v s";

      # } elsif ($lang eq "Italian") {
      # } elsif ($lang eq "Portugese") {
      # } elsif ($lang eq "German") {
      # } elsif ($lang eq "Russian") {

    } else {
      confess "ERROR: Unknown language in Date::Manip.\n";
    }

    # Date::Manip:: variables for months
    #   $MonExp   : "(jan|january|feb|february ... )"
    #   @Mon      : ("Jan","Feb",...)
    #   @Month    : ("January","February", ...)
    #   %Month    : ("january",1,"jan",1, ...)
    $Date::Manip::MonExp=&Date_Regexp("$mon $month","lc,under,sort,back");
    ($tmp,@Date::Manip::Mon)  =&Date_Regexp($mon,"under",1);
    ($tmp,@Date::Manip::Month)=&Date_Regexp($month,"under",1);
    ($tmp,@tmp2)  =&Date_Regexp($mon,"","val1");
    ($tmp,@tmp3)=&Date_Regexp($month,"","val1");
    @tmp=reverse(@tmp2,@tmp3);
    ($tmp,%Date::Manip::Month)=&Date_Regexp(\@tmp,"lc,under","1");

    # Date::Manip:: variables for day of week
    #   $WkExp  : "(sun|sunday|mon|monday ... )"
    #   @W      : ("S","M",...)
    #   @Wk     : ("Sun","Mon",...)
    #   @Week   : ("Sunday","Monday",...)
    #   %Week   : ("sunday",0,"sun",0,"s",0,...)
    $Date::Manip::WkExp=&Date_Regexp("$wk $week","lc,under,sort,back");
    ($tmp,@Date::Manip::W)   =&Date_Regexp($w,"",1);
    ($tmp,@Date::Manip::Wk)  =&Date_Regexp($wk,"",1);
    ($tmp,@Date::Manip::Week)=&Date_Regexp($week,"",1);
    ($tmp,@tmp )=&Date_Regexp($w,"","val0");
    ($tmp,@tmp2)=&Date_Regexp($wk,"","val0");
    ($tmp,@tmp3)=&Date_Regexp($week,"","val0");
    @tmp=reverse(@tmp,@tmp2,@tmp3);
    ($tmp,%Date::Manip::Week)=&Date_Regexp(\@tmp,"lc,under","1");

    # Date::Manip:: variables for day of week
    #   $DayExp   : "(1st|first|2nd|second ... )"
    #   %Day      : ("1st",1,"first",1, ... )"
    #   @Day      : ("1st","2nd",...);
    # Date::Manip:: variables for week of month
    #   $WhichExp : "(1st|first|2nd|second ... fifth|last)"
    #   %Which    : ("1st",1,"first",1, ... "fifth",5,"last",-1)"
    $Date::Manip::DayExp=&Date_Regexp(join(" ",@days),"back,sort,lc,under");
    ($tmp,@Date::Manip::Day)=&Date_Regexp($days[0],"lc,under",1);
    %Date::Manip::Day  =();
    %Date::Manip::Which=();
    @tmp2=@tmp3=();
    foreach $days (@days) {
      ($tmp,%tmp) =&Date_Regexp($days,"lc,under","val1");
      @tmp=();
      foreach (1,2,3,4,5) {
        push(@tmp,($_,$tmp{$_}))  if (exists $tmp{$_});
      }
      push(@tmp3,reverse (@tmp));

      @tmp=%tmp;
      push(@tmp2,reverse(@tmp));
    }
    %Date::Manip::Day=@tmp2;
    ($tmp,@tmp) =&Date_Regexp($last,"lc,under",1);
    push(@tmp3, map { $_,-1 } @tmp);
    ($Date::Manip::WhichExp,@tmp)= &Date_Regexp(\@tmp3,"sort,back","keys");
    %Date::Manip::Which=@tmp3;

    # Date::Manip:: variables for AM or PM
    #   $AmExp   : "(am)"
    #   $PmExp   : "(pm)"
    #   $AmPmExp : "(am|pm)"
    #   %AmPm    : (am,1,pm,2)
    #   $Am      : "AM"
    #   $Pm      : "PM"
    $Date::Manip::AmPmExp=&Date_Regexp("$am $pm","lc,back,under");
    ($Date::Manip::AmExp,@tmp2)=&Date_Regexp("$am","lc,back,under",1);
    ($Date::Manip::PmExp,@tmp3)=&Date_Regexp("$pm","lc,back,under",1);
    @tmp=map { $_,1 } @tmp2;
    push(@tmp,map { $_,2 } @tmp3);
    %Date::Manip::AmPm=@tmp;
    ($tmp,@tmp2)=&Date_Regexp("$am","under",1);
    ($tmp,@tmp3)=&Date_Regexp("$pm","under",1);
    $Date::Manip::Am=shift(@tmp2);
    $Date::Manip::Pm=shift(@tmp3);

    # Date::Manip:: variables for expressions used in parsing deltas
    #    $YExp   : "(?:y|yr|year|years)"
    #    $MExp   : similar for months
    #    $WExp   : similar for weeks
    #    $DExp   : similar for days
    #    $HExp   : similar for hours
    #    $MnExp  : similar for minutes
    #    $SExp   : similar for seconds
    #    %Replace: a list of replacements
    $Date::Manip::YExp   =&Date_Regexp($years,"lc,sort,under");
    $Date::Manip::MExp   =&Date_Regexp($months,"lc,sort,under");
    $Date::Manip::WExp   =&Date_Regexp($weeks,"lc,sort,under");
    $Date::Manip::DExp   =&Date_Regexp($days,"lc,sort,under");
    $Date::Manip::HExp   =&Date_Regexp($hours,"lc,sort,under");
    $Date::Manip::MnExp  =&Date_Regexp($minutes,"lc,sort,under");
    $Date::Manip::SExp   =&Date_Regexp($seconds,"lc,sort,under,opt");
    %Date::Manip::Replace=split(/\s+/,lc($replace));

    # Date::Manip:: variables for special dates that are offsets from now
    #    $Now      : "(now|today)"
    #    $Offset   : "(yesterday|tomorrow)"
    #    %Offset   : ("yesterday","-1:0:0:0",...)
    #    $TimesExp : "(noon|midnight)"
    #    %Times    : ("noon","12:00:00","midnight","00:00:00")
    $Date::Manip::Now=   &Date_Regexp($now,"lc,back,under");
    ($Date::Manip::Offset,%Date::Manip::Offset)=
      &Date_Regexp($offset,"lc,under,back","keys");
    ($Date::Manip::TimesExp,%Date::Manip::Times)=
      &Date_Regexp($times,"lc,under,back","keys");
    $Date::Manip::SepHM=$sephm;
    $Date::Manip::SepMS=$sepms;
    $Date::Manip::SepSS=$sepss;

    # Date::Manip:: variables for time zones
    #    $ZoneExp     : regular expression
    #    %Zone        : all parsable zones with their translation
    #    $Zone        : the current time zone
    #    $CurrZoneExp : "(us/eastern|us/central)"
    #    %CurrZone    : ("us/eastern","est7edt","us/central","cst6cdt")
    $zonesrfc=
      "idlw -1200 ".  # International Date Line West
      "nt   -1100 ".  # Nome
      "hst  -1000 ".  # Hawaii Standard
      "cat  -1000 ".  # Central Alaska
      "ahst -1000 ".  # Alaska-Hawaii Standard
      "yst  -0900 ".  # Yukon Standard
      "hdt  -0900 ".  # Hawaii Daylight
      "ydt  -0800 ".  # Yukon Daylight
      "pst  -0800 ".  # Pacific Standard
      "pdt  -0700 ".  # Pacific Daylight
      "mst  -0700 ".  # Mountain Standard
      "mdt  -0600 ".  # Mountain Daylight
      "cst  -0600 ".  # Central Standard
      "cdt  -0500 ".  # Central Daylight
      "est  -0500 ".  # Eastern Standard
      "edt  -0400 ".  # Eastern Daylight
      "ast  -0400 ".  # Atlantic Standard
      #"nst -0330 ".  # Newfoundland Standard       nst=North Sumatra    +0630
      "nft  -0330 ".  # Newfoundland
      #"gst -0300 ".  # Greenland Standard          gst=Guam Standard    +1000
      "bst  -0300 ".  # Brazil Standard             bst=British Summer   +0100
      "adt  -0300 ".  # Atlantic Daylight
      "ndt  -0230 ".  # Newfoundland Daylight
      "at   -0200 ".  # Azores
      "wat  -0100 ".  # West Africa
      "gmt  +0000 ".  # Greenwich Mean
      "ut   +0000 ".  # Universal (Coordinated)
      "utc  +0000 ".  # Universal (Coordinated)
      "wet  +0000 ".  # Western European
      "cet  +0100 ".  # Central European
      "fwt  +0100 ".  # French Winter
      "met  +0100 ".  # Middle European
      "mewt +0100 ".  # Middle European Winter
      "swt  +0100 ".  # Swedish Winter
      #"bst +0100 ".  # British Summer              bst=Brazil standard  -0300
      "eet  +0200 ".  # Eastern Europe, USSR Zone 1
      "fst  +0200 ".  # French Summer
      "mest +0200 ".  # Middle European Summer
      "sst  +0200 ".  # Swedish Summer              sst=South Sumatra    +0700
      "bt   +0300 ".  # Baghdad, USSR Zone 2
      "it   +0330 ".  # Iran
      "zp4  +0400 ".  # USSR Zone 3
      "zp5  +0500 ".  # USSR Zone 4
      "ist  +0530 ".  # Indian Standard
      "zp6  +0600 ".  # USSR Zone 5
      "nst  +0630 ".  # North Sumatra               nst=Newfoundland Std -0330
      "wast +0700 ".  # West Australian Standard
      #"sst +0700 ".  # South Sumatra, USSR Zone 6  sst=Swedish Summer   +0200
      "jt   +0730 ".  # Java (3pm in Cronusland!)
      "cct  +0800 ".  # China Coast, USSR Zone 7
      "wadt +0800 ".  # West Australian Daylight
      "jst  +0900 ".  # Japan Standard, USSR Zone 8
      "cast +0930 ".  # Central Australian Standard
      "east +1000 ".  # Eastern Australian Standard
      "gst  +1000 ".  # Guam Standard, USSR Zone 9  gst=Greenland Std    -0300
      "cadt +1030 ".  # Central Australian Daylight
      "eadt +1100 ".  # Eastern Australian Daylight
      "idle +1200 ".  # International Date Line East
      "nzst +1200 ".  # New Zealand Standard
      "nzt  +1200 ".  # New Zealand
      "nzdt +1300 ".  # New Zealand Daylight
      "z +0000 ".
      "a -0100 b -0200 c -0300 d -0400 e -0500 f -0600 g -0700 h -0800 ".
      "i -0900 k -1000 l -1100 m -1200 ".
      "n +0100 o +0200 p +0300 q +0400 r +0500 s +0600 t +0700 u +0800 ".
      "v +0900 w +1000 x +1100 y +1200 ".
      '[+-]\d{4} 0000';
    ($Date::Manip::ZoneExp,%Date::Manip::Zone)=
      &Date_Regexp("$zonesrfc $zones","sort,lc,under,back,opt,PRE,POST",
                   "keys");
    $tmp=
      "US/Pacific  PST8PDT ".
      "US/Mountain MST7MDT ".
      "US/Central  CST6CDT ".
      "US/Eastern  EST5EDT";
    ($Date::Manip::CurrZoneExp,%Date::Manip::CurrZone)=
      &Date_Regexp($tmp,"lc,under,back","keys");
    $Date::Manip::TZ=&Date_TimeZone;

    # Date::Manip:: misc. variables
    #    $At     : "(?:at)"
    #    $In     : "(?:in|of)"
    #    $On     : "(?:on)"
    #    $Future : "(?:in)"
    #    $Past   : "(?:ago)"
    #    $Next   : "(?:next)"
    #    $Prev   : "(?:last|previous)"
    $Date::Manip::At    =&Date_Regexp($at,"lc,under,pre,post,optws");
    $Date::Manip::In    =&Date_Regexp($in,"lc,under,pre,post");
    $Date::Manip::On    =&Date_Regexp($on,"lc,under,pre,post,optws");
    $Date::Manip::Future=&Date_Regexp($future,"lc,under");
    $Date::Manip::Past  =&Date_Regexp($past,"lc,under");
    $Date::Manip::Next  =&Date_Regexp($next,"lc,under");
    $Date::Manip::Prev  =&Date_Regexp($prev,"lc,under");

    # Date::Manip:: calc mode variables
    #    $Approx  : "(?:approximately)"
    #    $Exact   : "(?:exactly)"
    #    $Business: "(?:business)"
    $Date::Manip::Exact   =&Date_Regexp($exact,"lc,under");
    $Date::Manip::Approx  =&Date_Regexp($approx,"lc,under");
    $Date::Manip::Business=&Date_Regexp($business,"lc,under");

    ############### END OF LANGUAGE INITIALIZATION
  }

  if ($Date::Manip::ResetWorkDay) {
    my($h1,$m1,$h2,$m2)=();
    if ($Date::Manip::WorkDay24Hr) {
      ($Date::Manip::WDBh,$Date::Manip::WDBm)=(0,0);
      ($Date::Manip::WDEh,$Date::Manip::WDEm)=(24,0);
      $Date::Manip::WDlen=24*60;
      $Date::Manip::WorkDayBeg="00:00";
      $Date::Manip::WorkDayEnd="23:59";

    } else {
      confess "ERROR: Invalid WorkDayBeg in Date::Manip.\n"
        if (! (($h1,$m1)=&CheckTime($Date::Manip::WorkDayBeg)));
      confess "ERROR: Invalid WorkDayEnd in Date::Manip.\n"
        if (! (($h2,$m2)=&CheckTime($Date::Manip::WorkDayEnd)));

      ($Date::Manip::WDBh,$Date::Manip::WDBm)=($h1,$m1);
      ($Date::Manip::WDEh,$Date::Manip::WDEm)=($h2,$m2);

      # Work day length = h1:m1  or  0:len (len minutes)
      $h1=$h2-$h1;
      $m1=$m2-$m1;
      if ($m1<0) {
        $h1--;
        $m1+=60;
      }
      $Date::Manip::WDlen=$h1*60+$m1;
    }
    $Date::Manip::ResetWorkDay=0;
  }

  # current time
  my($s,$mn,$h,$d,$m,$y,$wday,$yday,$isdst)=localtime(time);
  $y+=1900;
  my($ampm)=();
  $wk="";
  $m++;
  &Date_ErrorCheck(\$y,\$m,\$d,\$h,\$mn,\$s,\$ampm,\$wk);
  $Date::Manip::CurrY=$y;
  $Date::Manip::CurrM=$m;
  $Date::Manip::CurrD=$d;
  $Date::Manip::CurrH=$h;
  $Date::Manip::CurrMn=$mn;
  $Date::Manip::CurrS=$s;
  $Date::Manip::CurrAmPm=$ampm;
  $Date::Manip::Curr=&FormDate($y,$m,$d,$h,$mn,$s);
}

# Returns 1 if $date is a work day.  If $time is non-zero, the time is
# also checked to see if it falls within work hours.
sub Date_IsWorkDay {
  my($date,$time)=@_;
  &Date_Init()  if (! $Date::Manip::InitDone);
  my($d)=$date;
  $d=&Date_SetTime($date,$Date::Manip::WorkDayBeg)
    if (! defined $time  or  ! $time);

  my($y,$dofw,$h,$m)=&UnixDate($d,"%Y","%w","%H","%M");
  return 0  if ($dofw<$Date::Manip::WorkWeekBeg or
                $dofw>$Date::Manip::WorkWeekEnd or
                "$h:$m" lt $Date::Manip::WorkDayBeg or
                "$h:$m" gt $Date::Manip::WorkDayEnd);
  if ($y!=$Date::Manip::CurrHolidayYear) {
    $Date::Manip::CurrHolidayYear=$y;
    &Date_UpdateHolidays;
  }
  $d=&Date_SetTime($date,"00:00:00");
  return 0  if (exists $Date::Manip::CurrHolidays{$d});
  1;
}

# Finds the day $off work days from now.  If $time is passed in, we must
# also take into account the time of day.
#
# If $time is not passed in, day 0 is today (if today is a workday) or the
# next work day if it isn't.  In any case, the time of day is unaffected.
#
# If $time is passed in, day 0 is now (if now is part of a workday) or the
# start of the very next work day.
sub Date_NextWorkDay {
  my($date,$off,$time)=@_;
  &Date_Init()  if (! $Date::Manip::InitDone);
  my($err)=();

  if (! &Date_IsWorkDay($date,$time)) {
    if (defined $time and $time) {
      while (1) {
        $date=&Date_GetNext($date,undef,0,$Date::Manip::WorkDayBeg);
        last  if (&Date_IsWorkDay($date,$time));
      }
    } else {
      while (1) {
        $date=&DateCalc_DateDelta($date,"+0:0:1:0:0:0",\$err,0);
        last  if (&Date_IsWorkDay($date,$time));
      }
    }
  }

  while ($off>0) {
    while (1) {
      $date=&DateCalc_DateDelta($date,"+0:0:1:0:0:0",\$err,0);
      last  if (&Date_IsWorkDay($date,$time));
    }
    $off--;
  }

  return $date;
}

# Finds the day $off work days before now.  If $time is passed in, we must
# also take into account the time of day.
#
# If $time is not passed in, day 0 is today (if today is a workday) or the
# previous work day if it isn't.  In any case, the time of day is unaffected.
#
# If $time is passed in, day 0 is now (if now is part of a workday) or the
# end of the previous work period.  Note that since the end of a work day
# will automatically be turned into the start of the next one, this time
# may actually be treated as AFTER the current time.
sub Date_PrevWorkDay {
  my($date,$off,$time)=@_;
  &Date_Init()  if (! $Date::Manip::InitDone);
  my($err)=();

  if (! &Date_IsWorkDay($date,$time)) {
    if (defined $time and $time) {
      while (1) {
        $date=&Date_GetPrev($date,undef,0,$Date::Manip::WorkDayEnd);
        last  if (&Date_IsWorkDay($date,$time));
      }
      while (1) {
        $date=&Date_GetNext($date,undef,0,$Date::Manip::WorkDayBeg);
        last  if (&Date_IsWorkDay($date,$time));
      }
    } else {
      while (1) {
        $date=&DateCalc_DateDelta($date,"-0:0:1:0:0:0",\$err,0);
        last  if (&Date_IsWorkDay($date,$time));
      }
    }
  }

  while ($off>0) {
    while (1) {
      $date=&DateCalc_DateDelta($date,"-0:0:1:0:0:0",\$err,0);
      last  if (&Date_IsWorkDay($date,$time));
    }
    $off--;
  }

  return $date;
}

########################################################################
# NOT FOR EXPORT
########################################################################

# This is used in Date_Init to prepare regular expressions.  A list of
# items is passed in (either as a space separated string, or a reference to
# a list) and a regular expression which matches any one of the items is
# prepared.  The regular expression will be of one of the forms:
#   "(a|b)"       @list not empty, back option included
#   "(?:a|b)"     @list not empty
#   "()"          @list empty,     back option included
#   ""            @list empty
# $options is a string which contains any of the following strings:
#   back     : the regular expression has a backreference
#   opt      : the regular expression is optional and a "?" is appended in
#              the first two forms
#   optws    : the regular expression is optional and may be replaced by
#              whitespace
#   optWs    : the regular expression is optional, but if not present, must
#              be replaced by whitespace
#   sort     : the items in the list are sorted by length (longest first)
#   lc       : the string is lowercased
#   under    : any underscores are converted to spaces
#   pre      : it may be preceded by whitespace
#   Pre      : it must be preceded by whitespace
#   PRE      : it must be preceded by whitespace or the start
#   post     : it may be followed by whitespace
#   Post     : it must be followed by whitespace
#   POST     : it must be followed by whitespace or the end
# Spaces due to pre/post options will not be included in the back reference.
#
# If $array is included, then the elements will also be returned as a list.
# $array is a string which may contain any of the following:
#   keys     : treat the list as a hash and only the keys go into the regexp
#   key0     : treat the list as the values of a hash with keys 0 .. N-1
#   key1     : treat the list as the values of a hash with keys 1 .. N
#   val0     : treat the list as the keys of a hash with values 0 .. N-1
#   val1     : treat the list as the keys of a hash with values 1 .. N
sub Date_Regexp {
  my($list,$options,$array)=@_;
  my(@list,$ret,%hash,$i)=();
  $options=""  if (! defined $options);
  $array=""    if (! defined $array);

  my($sort,$lc,$under)=(0,0,0);
  $sort =1  if ($options =~ /sort/i);
  $lc   =1  if ($options =~ /lc/i);
  $under=1  if ($options =~ /under/i);
  my($back,$opt,$pre,$post,$ws)=("?:","","","","");
  $back =""          if ($options =~ /back/i);
  $opt  ="?"         if ($options =~ /opt/i);
  $pre  ='\s*'       if ($options =~ /pre/);
  $pre  ='\s+'       if ($options =~ /Pre/);
  $pre  ='(?:\s+|^)' if ($options =~ /PRE/);
  $post ='\s*'       if ($options =~ /post/);
  $post ='\s+'       if ($options =~ /Post/);
  $post ='(?:$|\s+)' if ($options =~ /POST/);
  $ws   ='\s*'       if ($options =~ /optws/);
  $ws   ='\s+'       if ($options =~ /optws/);

  my($hash,$keys,$key0,$key1,$val0,$val1)=(0,0,0,0,0,0);
  $keys =1     if ($array =~ /keys/i);
  $key0 =1     if ($array =~ /key0/i);
  $key1 =1     if ($array =~ /key1/i);
  $val0 =1     if ($array =~ /val0/i);
  $val1 =1     if ($array =~ /val1/i);
  $hash =1     if ($keys or $key0 or $key1 or $val0 or $val1);

  my($ref)=ref $list;
  if (! $ref) {
    $list =~ s/\s*$//;
    $list =~ s/^\s*//;
    $list =~ s/\s+/&&&/g;
  } elsif ($ref eq "ARRAY") {
    $list = join("&&&",@$list);
  } else {
    confess "ERROR: Date_Regexp.\n";
  }

  if (! $list) {
    if ($back eq "") {
      return "()";
    } else {
      return "";
    }
  }

  $list=lc($list)  if ($lc);
  $list=~ s/_/ /g  if ($under);
  @list=split(/&&&/,$list);
  if ($keys) {
    %hash=@list;
    @list=keys %hash;
  } elsif ($key0 or $key1 or $val0 or $val1) {
    $i=0;
    $i=1  if ($key1 or $val1);
    if ($key0 or $key1) {
      %hash= map { $_,$i++ } @list;
    } else {
      %hash= map { $i++,$_ } @list;
    }
  }
  @list=sort sortByLength(@list)  if ($sort);

  $ret="($back" . join("|",@list) . ")";
  $ret="(?:$pre$ret$post)"  if ($pre or $post);
  $ret.=$opt;
  $ret="(?:$ret|$ws)"  if ($ws);

  if ($array and $hash) {
    return ($ret,%hash);
  } elsif ($array) {
    return ($ret,@list);
  } else {
    return $ret;
  }
}

# This will produce a delta with the correct number of signs.  At most two
# signs will be in it normally (one before the year, and one in front of
# the day), but if appropriate, signs will be in front of all elements.
# Also, as many of the signs will be equivalent as possible.
sub NormalizeDelta {
  my($delta,$mode)=@_;
  return "" if (! defined $delta  or  ! $delta);
  return "+0:+0:+0:+0:+0:+0"
    if ($delta =~ /^([+-]?0+:){5}[+-]?0+/ and $Date::Manip::DeltaSigns);
  return "+0:0:0:0:0:0" if ($delta =~ /^([+-]?0+:){5}[+-]?0+/);

  my($tmp,$sign1,$sign2,$len)=();

  # Calculate the length of the day in minutes
  $len=24*60;
  $len=$Date::Manip::WDlen  if ($mode==2);

  # We have to get the sign of every component explicitely so that a "-0"
  # or "+0" doesn't get lost by treating it numerically (i.e. "-0:0:2" must
  # be a negative delta).

  my($y,$mon,$d,$h,$m,$s)=&CheckDelta($delta);

  # We need to make sure that the signs of all parts of a delta are the
  # same.  The easiest way to do this is to convert all of the large
  # components to the smallest ones, then convert the smaller components
  # back to the larger ones.

  # Do the year/month part

  $mon += $y*12;                         # convert y to m
  $sign1="+";
  if ($mon<0) {
    $mon *= -1;
    $sign1="-";
  }

  $y    = ($tmp=int($mon/12));           # convert m to y
  $mon -= $tmp*12;

  $y=0    if ($y eq "-0");               # get around silly -0 problem
  $mon=0  if ($mon eq "-0");

  # Do the day/hour/min/sec part

  $s += $d*$len*60 + $h*3600 + $m*60;    # convert d/h/m to s
  $sign2="+";
  if ($s<0) {
    $s*=-1;
    $sign2="-";
  }

  $m  = ($tmp=int($s/60));               # convert s to m
  $s -= $tmp*60;
  $d  = ($tmp=int($m/$len));             # convert m to d
  $m -= $tmp*$len;
  $h  = ($tmp=int($m/60));               # convert m to h
  $m -= $tmp*60;

  $d=0    if ($d eq "-0");               # get around silly -0 problem
  $h=0    if ($h eq "-0");
  $m=0    if ($m eq "-0");
  $s=0    if ($s eq "-0");

  # Only include two signs if necessary
  $sign1=$sign2  if ($y==0 and $mon==0);
  $sign2=$sign1  if ($d==0 and $h==0 and $m==0 and $s==0);
  $sign2=""  if ($sign1 eq $sign2  and  ! $Date::Manip::DeltaSigns);

  if ($Date::Manip::DeltaSigns) {
    return "$sign1$y:$sign1$mon:$sign2$d:$sign2$h:$sign2$m:$sign2$s";
  } else {
    return "$sign1$y:$mon:$sign2$d:$h:$m:$s";
  }
}

# This checks a delta to make sure it is valid.  If it is, it splits
# it and returns the elements with a sign on each.  The 2nd argument
# specifies the default sign.  Blank elements are set to 0.  If the
# third element is non-nil, exactly 6 elements must be included.
sub CheckDelta {
  my($delta,$sign,$exact)=@_;
  my(@delta)=split(/:/,$delta);
  return ()  if (defined $exact  and  $exact  and $#delta != 5);
  my($i)=();
  $sign="+"  if (! defined $sign);
  for ($i=0; $i<=$#delta; $i++) {
    $delta[$i]="0"  if (! $delta[$i]);
    return ()  if ($delta[$i] !~ /^[+-]?\d+$/);
    $sign = ($delta[$i] =~ s/^([+-])// ? $1 : $sign);
    $delta[$i] = $sign.$delta[$i];
  }
  @delta;
}

# Reads up to 3 arguments.  $h may contain the time in any international
# fomrat.  Any empty elements are set to 0.
sub ParseTime {
  my($h,$m,$s)=@_;
  my($t)=&CheckTime("one");

  if (defined $h  and  $h =~ /$t/) {
    $h=$1;
    $m=$2;
    $s=$3   if (defined $3);
  }
  $h="00"  if (! defined $h);
  $m="00"  if (! defined $m);
  $s="00"  if (! defined $s);

  ($h,$m,$s);
}

# Forms a date with the 6 elements passed in (all of which must be defined).
# No check as to validity is made.
sub FormDate {
  my($y,$m,$d,$h,$mn,$s)=@_;
  my($ym,$md,$dh,$hmn,$mns)=();

  if      ($Date::Manip::Internal == 0) {
    $ym=$md=$dh="";
    $hmn=$mns=":";

  } elsif ($Date::Manip::Internal == 1) {
    $ym=$md=$dh=$hmn=$mns="";

  } elsif ($Date::Manip::Internal == 2) {
    $ym=$md="-";
    $dh=" ";
    $hmn=$mns=":";

  } else {
    confess "ERROR: Invalid internal format in Date_FormDate.\n";
  }
  $m="0$m"    if (length($m)==1);
  $d="0$d"    if (length($d)==1);
  $h="0$h"    if (length($h)==1);
  $mn="0$mn"  if (length($mn)==1);
  $s="0$s"    if (length($s)==1);
  "$y$ym$m$md$d$dh$h$hmn$mn$mns$s";
}

# This checks a time.  If it is valid, it splits it and returns 3 elements.
# If "one" or "two" is passed in, a regexp with 1/2 or 2 digit hours is
# returned.
sub CheckTime {
  my($time)=@_;
  my($h)='(?:0?[0-9]|1[0-9]|2[0-3])';
  my($h2)='(?:0[0-9]|1[0-9]|2[0-3])';
  my($m)='[0-5][0-9]';
  my($s)=$m;
  my($hm)="(?:$Date::Manip::SepHM|:)";
  my($ms)="(?:$Date::Manip::SepMS|:)";
  my($ss)=$Date::Manip::SepSS;
  my($t)="^($h)$hm($m)(?:$ms($s)(?:$ss\d+)?)?\$";
  if ($time eq "one") {
    return $t;
  } elsif ($time eq "two") {
    $t="^($h2)$hm($m)(?:$ms($s)(?:$ss\d+)?)?\$";
    return $t;
  }

  if ($time =~ /$t/i) {
    ($h,$m,$s)=($1,$2,$3);
    $h="0$h" if (length($h)<2);
    $m="0$m" if (length($m)<2);
    $s="00"  if (! defined $s);
    return ($h,$m,$s);
  } else {
    return ();
  }
}

# This checks a date.  If it is valid, it splits it and returns the elements.
# If no date is passed in, it returns a regular expression for the date.
sub CheckDate {
  my($date)=@_;
  my($ym,$md,$dh,$hmn,$mns)=();
  my($y)='(\d{4})';
  my($m)='(0[1-9]|1[0-2])';
  my($d)='(0[1-9]|[1-2][0-9]|3[0-1])';
  my($h)='([0-1][0-9]|2[0-3])';
  my($mn)='([0-5][0-9])';
  my($s)=$mn;

  if      ($Date::Manip::Internal == 0) {
    $ym=$md=$dh="";
    $hmn=$mns=":";

  } elsif ($Date::Manip::Internal == 1) {
    $ym=$md=$dh=$hmn=$mns="";

  } elsif ($Date::Manip::Internal == 2) {
    $ym=$md="-";
    $dh=" ";
    $hmn=$mns=":";

  } else {
    confess "ERROR: Invalid internal format in Date_CheckDate.\n";
  }

  my($t)="^$y$ym$m$md$d$dh$h$hmn$mn$mns$s\$";
  return $t  if (! $date);

  return ($1,$2,$3,$4,$5,$6)  if ($date =~ /$t/);
  return ();
}

sub DateCalc_DateDate {
  my($D1,$D2,$mode)=@_;
  my(@d_in_m)=(0,31,28,31,30,31,30,31,31,30,31,30,31);
  $mode=0  if (! defined $mode);

  # Exact mode
  if ($mode==0) {
    my($y1,$m1,$d1,$h1,$mn1,$s1)=&CheckDate($D1);
    my($y2,$m2,$d2,$h2,$mn2,$s2)=&CheckDate($D2);
    my($i,@delta,$d,$delta,$y)=();

    # form the delta for hour/min/sec
    $delta[3]=$h2-$h1;
    $delta[4]=$mn2-$mn1;
    $delta[5]=$s2-$s1;

    # form the delta for yr/mon/day
    $delta[0]=$delta[1]=0;
    $d=0;
    if ($y2>$y1) {
      $d=&Date_DaysInYear($y1) - &Date_DayOfYear($m1,$d1,$y1);
      $d+=&Date_DayOfYear($m2,$d2,$y2);
      for ($y=$y1+1; $y<$y2; $y++) {
        $d+= &Date_DaysInYear($y);
      }
    } elsif ($y2<$y1) {
      $d=&Date_DaysInYear($y2) - &Date_DayOfYear($m2,$d2,$y2);
      $d+=&Date_DayOfYear($m1,$d1,$y1);
      for ($y=$y2+1; $y<$y1; $y++) {
        $d+= &Date_DaysInYear($y);
      }
      $d *= -1;
    } else {
      $d=&Date_DayOfYear($m2,$d2,$y2) - &Date_DayOfYear($m1,$d1,$y1);
    }
    $delta[2]=$d;

    for ($i=0; $i<6; $i++) {
      $delta[$i]="+".$delta[$i]  if ($delta[$i]>=0);
    }

    $delta=join(":",@delta);
    $delta=&NormalizeDelta($delta,0);
    return $delta;
  }

  my($date1,$date2)=($D1,$D2);
  my($tmp,$sign,$err,@tmp)=();

  # make sure both are work days
  if ($mode==2) {
    $date1=&Date_NextWorkDay($date1,0,1);
    $date2=&Date_NextWorkDay($date2,0,1);
  }

  # make sure date1 comes before date2
  if ($date1 gt $date2) {
    $sign="-";
    $tmp=$date1;
    $date1=$date2;
    $date2=$tmp;
  } else {
    $sign="+";
  }
  if ($date1 eq $date2) {
    return "+0:+0:+0:+0:+0:+0"  if ($Date::Manip::DeltaSigns);
    return "+0:0:0:0:0:0";
  }

  my($y1,$m1,$d1,$h1,$mn1,$s1)=&CheckDate($date1);
  my($y2,$m2,$d2,$h2,$mn2,$s2)=&CheckDate($date2);
  my($dy,$dm,$dd,$dh,$dmn,$ds,$ddd)=();

  # Do years
  $dy=$y2-$y1;
  $dm=0;
  if ($dy>0) {
    $tmp=&DateCalc_DateDelta($date1,"+$dy:0:0:0:0:0",\$err,0);
    if ($tmp gt $date2) {
      $dy--;
      $tmp=$date1;
      $tmp=&DateCalc_DateDelta($date1,"+$dy:0:0:0:0:0",\$err,0)  if ($dy>0);
      $dm=12;
    }
    $date1=$tmp;
  }

  # Do months
  $dm+=$m2-$m1;
  if ($dm>0) {
    $tmp=&DateCalc_DateDelta($date1,"+0:$dm:0:0:0:0",\$err,0);
    if ($tmp gt $date2) {
      $dm--;
      $tmp=$date1;
      $tmp=&DateCalc_DateDelta($date1,"+0:$dm:0:0:0:0",\$err,0)  if ($dm>0);
    }
    $date1=$tmp;
  }

  # Do days
  if ($mode==2) {
    $dd=0;
    while (1) {
      $tmp=&Date_NextWorkDay($date1,1,1);
      if ($tmp le $date2) {
        $dd++;
        $date1=$tmp;
      } else {
        last;
      }
    }

  } else {
    ($y1,$m1,$d1)=( &CheckDate($date1) )[0..2];
    $dd=0;
    # If we're jumping across months, set $d1 to the first of the next month
    # (or possibly the 0th of next month which is equivalent to the last day
    # of this month)
    if ($m1!=$m2) {
      $d_in_m[2]=29  if (&Date_LeapYear($y1));
      $dd=$d_in_m[$m1]-$d1+1;
      $d1=1;
      $tmp=&DateCalc_DateDelta($date1,"+0:0:$dd:0:0:0",\$err,0);
      if ($tmp gt $date2) {
        $dd--;
        $d1--;
        $tmp=&DateCalc_DateDelta($date1,"+0:0:$dd:0:0:0",\$err,0);
      }
      $date1=$tmp;
    }

    $ddd=0;
    if ($d1<$d2) {
      $ddd=$d2-$d1;
      $tmp=&DateCalc_DateDelta($date1,"+0:0:$ddd:0:0:0",\$err,0);
      if ($tmp gt $date2) {
        $ddd--;
        $tmp=&DateCalc_DateDelta($date1,"+0:0:$ddd:0:0:0",\$err,0);
      }
      $date1=$tmp;
    }
    $dd+=$ddd;
  }

  # in business mode, make sure h1 comes before h2 (if not find delta between
  # now and end of day and move to start of next business day)
  $d1=( &CheckDate($date1) )[2];
  $dh=$dmn=$ds=0;
  if ($mode==2  and  $d1<$d2) {
    $tmp=&Date_SetTime($date1,$Date::Manip::WorkDayEnd);
    $tmp=&DateCalc_DateDelta($tmp,"+0:0:0:0:1:0")
      if ($Date::Manip::WorkDay24Hr);
    $tmp=&DateCalc_DateDate($date1,$tmp,0);
    ($tmp,$tmp,$tmp,$dh,$dmn,$ds)=&CheckDelta($tmp);
    $date1=&Date_NextWorkDay($date1,1,0);
    $date1=&Date_SetTime($date1,$Date::Manip::WorkDayBeg);
    $d1=( &CheckDate($date1) )[2];
    confess "ERROR: DateCalc DateDate Business.\n"  if ($d1 != $d2);
  }

  # Hours, minutes, seconds
  $tmp=&DateCalc_DateDate($date1,$date2,0);
  @tmp=&CheckDelta($tmp);
  $dh  += $tmp[3];
  $dmn += $tmp[4];
  $ds  += $tmp[5];

  if ($Date::Manip::DeltaSigns) {
    return "$sign$dy:$sign$dm:$sign$dd:$sign$dh:$sign$dmn:$sign$ds";
  } else {
    return "$sign$dy:$dm:$dd:$dh:$dmn:$ds";
  }
}

sub DateCalc_DeltaDelta {
  my($D1,$D2,$mode)=@_;
  my(@delta1,@delta2,$i,$delta,@delta)=();
  $mode=0  if (! defined $mode);

  @delta1=&CheckDelta($D1);
  @delta2=&CheckDelta($D2);
  for ($i=0; $i<6; $i++) {
    $delta[$i]=$delta1[$i]+$delta2[$i];
    $delta[$i]="+".$delta[$i]  if ($delta[$i]>=0);
  }

  $delta=join(":",@delta);
  $delta=&NormalizeDelta($delta,$mode);
  return $delta;
}

sub DateCalc_DateDelta {
  my($D1,$D2,$errref,$mode)=@_;
  my($date)=();
  my(@d_in_m)=(0,31,28,31,30,31,30,31,31,30,31,30,31);
  my($h1,$m1,$h2,$m2,$len,$hh,$mm)=();
  $mode=0  if (! defined $mode);

  if ($mode==2) {
    $h1=$Date::Manip::WDBh;
    $m1=$Date::Manip::WDBm;
    $h2=$Date::Manip::WDEh;
    $m2=$Date::Manip::WDEm;
    $hh=$h2-$h1;
    $mm=$m2-$m1;
    if ($mm<0) {
      $hh--;
      $mm+=60;
    }
  }

  # Date, delta
  my($y,$m,$d,$h,$mn,$s)=&CheckDate($D1);
  my($dy,$dm,$dd,$dh,$dmn,$ds)=&CheckDelta($D2);

  # do the month/year part
  $y+=$dy;
  &ModuloAddition(-12,$dm,\$m,\$y);   # -12 means 1-12 instead of 0-11
  $d_in_m[2]=29  if (&Date_LeapYear($y));

  # in business mode, set the day to a work day at this point so the h/mn/s
  # stuff will work out
  if ($mode==2) {
    $d=$d_in_m[$m] if ($d>$d_in_m[$m]);
    $date=&Date_NextWorkDay(&FormDate($y,$m,$d,$h,$mn,$s),0,1);
    ($y,$m,$d,$h,$mn,$s)=&CheckDate($date);
  }

  # seconds, minutes, hours
  &ModuloAddition(60,$ds,\$s,\$mn);
  if ($mode==2) {
    while (1) {
      &ModuloAddition(60,$dmn,\$mn,\$h);
      $h+= $dh;

      if ($h>$h2  or  $h==$h2 && $mn>$m2) {
        $dh=$h-$h2;
        $dmn=$mn-$m2;
        $h=$h1;
        $mn=$m1;
        $dd++;

      } elsif ($h<$h1  or  $h==$h1 && $mn<$m1) {
        $dh=$h1-$h;
        $dmn=$m1-$mn;
        $h=$h2;
        $mn=$m2;
        $dd--;

      } elsif ($h==$h2  &&  $mn==$m2) {
        $dd++;
        $dh=-$hh;
        $dmn=-$mm;

      } else {
        last;
      }
    }

  } else {
    &ModuloAddition(60,$dmn,\$mn,\$h);
    &ModuloAddition(24,$dh,\$h,\$d);
  }

  # If we have just gone past the last day of the month, we need to make
  # up for this:
  if ($d>$d_in_m[$m]) {
    $dd+= $d-$d_in_m[$m];
    $d=$d_in_m[$m];
  }

  # days
  if ($mode==2) {
    if ($dd>=0) {
      $date=&Date_NextWorkDay(&FormDate($y,$m,$d,$h,$mn,$s),$dd,1);
    } else {
      $date=&Date_PrevWorkDay(&FormDate($y,$m,$d,$h,$mn,$s),-$dd,1);
    }
    ($y,$m,$d,$h,$mn,$s)=&CheckDate($date);

  } else {
    $d_in_m[2]=29  if (&Date_LeapYear($y));
    $d=$d_in_m[$m]  if ($d>$d_in_m[$m]);
    $d += $dd;
    while ($d<1) {
      $m--;
      if ($m==0) {
        $m=12;
        $y--;
        if (&Date_LeapYear($y)) {
          $d_in_m[2]=29;
        } else {
          $d_in_m[2]=28;
        }
      }
      $d += $d_in_m[$m];
    }
    while ($d>$d_in_m[$m]) {
      $d -= $d_in_m[$m];
      $m++;
      if ($m==13) {
        $m=1;
        $y++;
        if (&Date_LeapYear($y)) {
          $d_in_m[2]=29;
        } else {
          $d_in_m[2]=28;
        }
      }
    }
  }

  if ($y<1000 or $y>9999) {
    $$errref=3;
    return;
  }
  &FormDate($y,$m,$d,$h,$mn,$s);
}

sub Date_UpdateHolidays {
  my($date,$delta,$err)=();
  local($_)=();
  foreach (keys %Date::Manip::Holidays) {
    if (/^(.*)([+-].*)$/) {
      # Date +/- Delta
      ($date,$delta)=($1,$2);
      $Date::Manip::UpdateHolidays=1;
      $date=&ParseDate($date);
      $Date::Manip::UpdateHolidays=0;
      $date=&DateCalc($date,$delta,\$err,0);

    } else {
      # Date
      $Date::Manip::UpdateHolidays=1;
      $date=&ParseDate($_);
      $Date::Manip::UpdateHolidays=0;
    }
    $Date::Manip::CurrHolidays{$date}=1;
  }
}

# This sets a Date::Manip config variable.
sub Date_SetConfigVariable {
  my($var,$val)=@_;

  return  if ($var =~ /^PersonalCnf$/i);
  return  if ($var =~ /^PersonalCnfPath$/i);

  $Date::Manip::InitFilesRead=1,   return  if ($var =~ /^IgnoreGlobalCnf$/i);
  %Date::Manip::Holidays=(),       return  if ($var =~ /^EraseHolidays$/i);
  $Date::Manip::Init=0,
  $Date::Manip::Language=$val,     return  if ($var =~ /^Language$/i);
  $Date::Manip::DateFormat=$val,   return  if ($var =~ /^DateFormat$/i);
  $Date::Manip::TZ=$val,           return  if ($var =~ /^TZ$/i);
  $Date::Manip::ConvTZ=$val,       return  if ($var =~ /^ConvTZ$/i);
  $Date::Manip::Internal=$val,     return  if ($var =~ /^Internal$/i);
  $Date::Manip::FirstDay=$val,     return  if ($var =~ /^FirstDay$/i);
  $Date::Manip::WorkWeekBeg=$val,  return  if ($var =~ /^WorkWeekBeg$/i);
  $Date::Manip::WorkWeekEnd=$val,  return  if ($var =~ /^WorkWeekEnd$/i);
  $Date::Manip::WorkDayBeg=$val,
  $Date::Manip::ResetWorkDay=1,    return  if ($var =~ /^WorkDayBeg$/i);
  $Date::Manip::WorkDayEnd=$val,
  $Date::Manip::ResetWorkDay=1,    return  if ($var =~ /^WorkDayEnd$/i);
  $Date::Manip::WorkDay24Hr=$val,
  $Date::Manip::ResetWorkDay=1,    return  if ($var =~ /^WorkDay24Hr$/i);
  $Date::Manip::DeltaSigns=$val,   return  if ($var =~ /^DeltaSigns$/i);

  confess "ERROR: Unknown configuration variable $var in Date::Manip.\n";
}

# This reads an init file.
sub ReadInitFile {
  my($file)=@_;
  local($_)=();
  my($section)="vars";
  my($var,$val,$date,$name)=();

  open(IN,$file);
  while(defined ($_=<IN>)) {
    chomp;
    s/^\s+//;
    s/\s+$//;
    next  if (! $_  or  /^\#/);
    if (s/^\*\s*//) {
      $section=$_;
      next;
    }

    if ($section =~ /var/) {
      confess "ERROR: invalid Date::Manip config file line.\n  $_\n"
        if (! /(.*\S)\s*=\s*(.*)$/);
      ($var,$val)=($1,$2);
      &Date_SetConfigVariable($var,$val);

    } elsif ($section =~ /holiday/i) {
      confess "ERROR: invalid Date::Manip config file line.\n  $_\n"
        if (! /(.*\S)\s*=\s*(.*)$/);
      ($date,$name)=($1,$2);
      $name=""  if (! defined $name);
      $Date::Manip::Holidays{$date}=$name;

    } else {
      # A section not currently used by Date::Manip (but may be
      # used by some extension to it).
      next;
    }
  }
  close(IN);
}

# Get rid of a problem on old versions of perl
no strict "vars";
# This sorts from longest to shortest element
sub sortByLength {
  return (length $b <=> length $a);
}
use strict "vars";

# $flag=&Date_ErrorCheck(\$y,\$m,\$d,\$h,\$mn,\$s,\$ampm,\$wk);
#   Returns 1 if any of the fields are bad.  All fields are optional, and
#   all possible checks are done on the data.  If a field is not passed in,
#   it is set to default values.  If data is missing, appropriate defaults
#   are supplied.
#
#   If the flag Date::Manip::UpdateHolidays is set, the year is set to
#   Date::Manip::CurrHolidayYear.
sub Date_ErrorCheck {
  my($y,$m,$d,$h,$mn,$s,$ampm,$wk)=@_;
  my($tmp1,$tmp2,$tmp3)=();

  my(@d_in_m)=(0,31,28,31,30,31,30,31,31,30,31,30,31);
  my($curr_y)=$Date::Manip::CurrY;
  my($curr_m)=$Date::Manip::CurrM;
  my($curr_d)=$Date::Manip::CurrD;
  $$y=""     if (! defined $$y);
  $$m=""     if (! defined $$m);
  $$d=""     if (! defined $$d);
  $$h=""     if (! defined $$h);
  $$mn=""    if (! defined $$mn);
  $$s=""     if (! defined $$s);
  $$ampm=""  if (! defined $$ampm);
  $$ampm=uc($$ampm)  if ($$ampm);
  $$wk=""    if (! defined $$wk);
  $$d=$curr_d  if ($$y eq "" and $$m eq "" and $$d eq "");

  # Check year.
  $$y=$Date::Manip::CurrHolidayYear  if ($Date::Manip::UpdateHolidays);
  $$y=$curr_y    if ($$y eq "");
  if (length($$y)==2) {
    $tmp1=$curr_y-89;
    $$y="19$$y";
    while ($$y<$tmp1) {
      $$y+=100;
    }
  }
  return 1       if (! &IsInt($$y,1,9999));
  $d_in_m[2]=29  if (&Date_LeapYear($$y));

  # Check month
  $$m=$curr_m     if ($$m eq "");
  $$m=$Date::Manip::Month{lc($$m)}  if (exists $Date::Manip::Month{lc($$m)});
  $$m="0$$m"      if (length($$m)==1);
  return 1        if (! &IsInt($$m,1,12));

  # Check day
  $$d="01"        if ($$d eq "");
  $$d="0$$d"      if (length($$d)==1);
  return 1        if (! &IsInt($$d,1,$d_in_m[$$m]));
  if ($$wk) {
    $tmp1=&Date_DayOfWeek($$m,$$d,$$y);
    $tmp2=$Date::Manip::Week{lc($$wk)}
      if (exists $Date::Manip::Week{lc($$wk)});
    return 1      if ($tmp1 != $tmp2);
  }

  # Check hour
  $tmp1=$Date::Manip::AmPmExp;
  $tmp2="";
  if ($$ampm =~ /^$tmp1$/i) {
    $tmp3=$Date::Manip::AmExp;
    $tmp2="AM"  if ($$ampm =~ /^$tmp3$/i);
    $tmp3=$Date::Manip::PmExp;
    $tmp2="PM"  if ($$ampm =~ /^$tmp3$/i);
  } elsif ($$ampm) {
    return 1;
  }
  if ($tmp2 eq "AM" || $tmp2 eq "PM") {
    $$h="0$$h"    if (length($$h)==1);
    return 1      if ($$h<1 || $$h>12);
    $$h="00"      if ($tmp2 eq "AM"  and  $$h==12);
    $$h += 12     if ($tmp2 eq "PM"  and  $$h!=12);
  } else {
    $$h="00"      if ($$h eq "");
    $$h="0$$h"    if (length($$h)==1);
    return 1      if (! &IsInt($$h,0,23));
    $tmp2="AM"    if ($$h<12);
    $tmp2="PM"    if ($$h>=12);
  }
  $$ampm=$Date::Manip::Am;
  $$ampm=$Date::Manip::Pm  if ($tmp2 eq "PM");

  # Check minutes
  $$mn="00"       if ($$mn eq "");
  $$mn="0$$mn"    if (length($$mn)==1);
  return 1        if (! &IsInt($$mn,0,59));

  # Check seconds
  $$s="00"        if ($$s eq "");
  $$s="0$$s"      if (length($$s)==1);
  return 1        if (! &IsInt($$s,0,59));

  return 0;
}

########################################################################
# FROM MY PERSONAL LIBRARIES
########################################################################

# This takes 4 numbers ($N,$add,\$val,\$rem), adds $add to $val, and forces
# $val to be in a certain range.  This is useful for adding numbers for
# which only a certain range is allowed (for example, minutes can be
# between 0 and 59 or months can be between 1 and 12).  The absolute value
# of $N determines the range and the sign of $N determines whether the
# range is 0 to N-1 (if N>0) or 1 to N (N<0).  The remainder (as modulo N)
# is added to $rem.
sub ModuloAddition {
  my($N,$add,$val,$rem)=@_;
  return  if ($N==0);
  $$val+=$add;
  if ($N<0) {
    # 1 to N
    $N = -$N;
    if ($$val>$N) {
      $$rem+= int(($$val-1)/$N);
      $$val = ($$val-1)%$N +1;
    } elsif ($$val<1) {
      $$rem-= int(-$$val/$N)+1;
      $$val = $N-(-$$val % $N);
    }

  } else {
    # 0 to N-1
    if ($$val>($N-1)) {
      $$rem+= int($$val/$N);
      $$val = $$val%$N;
    } elsif ($$val<0) {
      $$rem-= int(-($$val+1)/$N)+1;
      $$val = ($N-1)-(-($$val+1)%$N);
    }
  }
}

# Returns 1 if $String is a valid integer, 0 otherwise.  If $low
# and $high are entered, the integer must be in that range.
sub IsInt {
  my($N,$low,$high)=@_;
  return 0 if ($N eq "");
  my($sign)='^\s* [-+]? \s*';
  my($int) ='\d+ \s* $ ';
  if ($N =~ /$sign $int/x) {
    if (defined $low  and  defined $high) {
      return 1  if ($N>=$low  and  $N<=$high);
      return 0;
    }
    return 1;
  }
  return 0;
}

# $Pos=&SinLindex(\@List,$Str [,$Offset [,$CaseInsensitive]]);
#    Searches for a list element exactly equal to $Str.
#
#    This returns the location of first element (starting at $Offset) in
#    @List containing $Str.  $Offset defaults to 0.  A negative offset
#    refers to the number of elements before the end of the list (-1 is the
#    last element).  The regular expression is case sensitive by default.
#
#    -1 is returned if it is not found and -2 is returned if an error is
#    encountered.
sub SinLindex {
  my($listref,$Str,$Offset,$Insensitive)=@_;
  my($i,$len,$tmp)=();
  $len=$#$listref;
  return -2  if ($len<0 or ! $Str);
  return -1  if (&Index_First(\$Offset,$len));
  $Str=uc($Str)  if ($Insensitive);
  for ($i=$Offset; $i<=$len; $i++) {
    $tmp=$$listref[$i];
    $tmp=uc($tmp)  if ($Insensitive);
    return $i  if ($tmp eq $Str);
  }
  return -1;
}
sub Index_First {
  my($Offsetref,$max)=@_;
  $$Offsetref=0  if (! $$Offsetref);
  if ($$Offsetref < 0) {
    $$Offsetref += $max + 1;
    $$Offsetref=0  if ($$Offsetref < 0);
  }
  return -1 if ($$Offsetref > $max);
  return 0;
}

# $File=&CleanFile($file);
#   This cleans up a path to remove the following things:
#     double slash       /a//b  -> /a/b
#     trailing dot       /a/.   -> /a
#     leading dot        ./a    -> a
#     trailing slash     a/     -> a
sub CleanFile {
  my($file)=@_;
  $file =~ s/\s*$//;
  $file =~ s/^\s*//;
  $file =~ s|//+|/|g;  # multiple slash
  $file =~ s|/\.$|/|;  # trailing /. (leaves trailing slash)
  $file =~ s|^\./||    # leading ./
    if ($file ne "./");
  $file =~ s|/$||      # trailing slash
    if ($file ne "/");
  return $file;
}

# $File=&ExpandTilde($file);
#   This checks to see if a "~" appears as the first character in a path.
#   If it does, the "~" expansion is interpreted (if possible) and the full
#   path is returned.  If a "~" expansion is used but cannot be
#   interpreted, an empty string is returned.  CleanFile is called.
sub ExpandTilde {
  my($file)=shift;
  my($user)=();
  my($name,$passwd,$uid,$gid,$quota,$comment,$gcos,$dir,$shell)=();
  # ~aaa/bbb=      ~  aaa      /bbb
  if ($file =~ m% ^~ ([^\/]*) (\/.*)? %x) {
    ($user,$file)=($1,$2);
    # Single user operating systems (Mac, MSWindows) don't have the getpwnam
    # and getpwuid routines defined.  Try to catch various different ways
    # of knowing we are on one of these systems:
    return ""  if (defined $^O and
                   $^O =~ /MacOS/i ||
                   $^O =~ /MSWin32/i ||
                   $^O =~ /Windows_95/i);
    return ""  if (defined $ENV{OS} and
                   $ENV{OS} =~ /MacOS/i ||
                   $ENV{OS} =~ /MSWin32/i ||
                   $ENV{OS} =~ /Windows_95/i);
    $user=""  if (! defined $user);
    $file=""  if (! defined $file);
    if ($user) {
      ($name,$passwd,$uid,$gid,$quota,$comment,$gcos,$dir,$shell)=
        getpwnam($user);
    } else {
      ($name,$passwd,$uid,$gid,$quota,$comment,$gcos,$dir,$shell)=
        getpwuid($<);
    }
    return ""  if (! $dir);

    $file="$dir/$file";
  }
  return &CleanFile($file);
}

# $File=&FullFilePath($file);
#   Returns the full path to $file.  Returns an empty string if a "~"
#   expansion cannot be interpreted.  The path does not need to exist.
#   CleanFile is called.
sub FullFilePath {
  my($file)=shift;
  $file=&ExpandTilde($file);
  return ""  if (! $file);
  $file=cwd . "/$file"  if ($file !~ m|^/|);   # $file = "a/b/c"
  return &CleanFile($file);
}

# $Flag=&CheckFilePath($file [,$mode]);
#   Checks to see if $file exists, to see what type it is, and whether
#   the script can access it.  If it exists and has the correct mode, 1
#   is returned.
#
#   $mode is a string which may contain any of the valid file test operator
#   characters except t, M, A, C.  The appropriate test is run for each
#   character.  For example, if $mode is "re" the -r and -e tests are both
#   run.
#
#   An empty string is returned if the file doesn't exist.  A 0 is returned
#   if the file exists but any test fails.
#
#   All characters in $mode which do not correspond to valid tests are
#   ignored.
sub CheckFilePath {
  my($file,$mode)=@_;
  my($test)=();
  $file=&FullFilePath($file);
  $mode = ""  if (! defined $mode);

  # File doesn't exist
  return "" if (! defined $file  or  ! $file  or  ! -e $file );

  # Run tests
  foreach $test ("r","w","x","R","W","X","o","O","e","z","s","f","d","l","s",
                 "p","b","c","u","g","k","T","B") {
    return 0  if ($mode =~ /$test/  and  ! eval "-$test '$file'");
  }

  return 1;
}

# $Path=&FixPath($path [,$full] [,$mode] [,$error]);
#   Makes sure that every directory in $path (a colon separated list of
#   directories) appears as a full path or relative path.  All "~"
#   expansions are removed.  All trailing slashes are removed also.  If
#   $full is non-nil, relative paths are expanded to full paths as well.
#
#   If $mode is given, it may be either "e", "r", or "w".  In this case,
#   additional checking is done to each directory.  If $mode is "e", it
#   need ony exist to pass the check.  If $mode is "r", it must have have
#   read and execute permission.  If $mode is "w", it must have read,
#   write, and execute permission.
#
#   The value of $error determines what happens if the directory does not
#   pass the test.  If it is non-nil, if any directory does not pass the
#   test, the subroutine returns the empty string.  Otherwise, it is simply
#   removed from $path.
#
#   The corrected path is returned.
sub FixPath {
  my($path,$full,$mode,$err)=@_;
  my(@dir)=split(/:/,$path);
  $full=0  if (! defined $full);
  $mode="" if (! defined $mode);
  $err=0   if (! defined $err);
  $path="";
  if ($mode eq "e") {
    $mode="de";
  } elsif ($mode eq "r") {
    $mode="derx";
  } elsif ($mode eq "w") {
    $mode="derwx";
  }

  foreach (@dir) {

    # Expand path
    if ($full) {
      $_=&FullFilePath($_);
    } else {
      $_=&ExpandTilde($_);
    }
    if (! $_) {
      return ""  if ($err);
      next;
    }

    # Check mode
    if (! $mode  or  &CheckFilePath($_,$mode)) {
      $path .= ":$_";
    } else {
      return "" if ($err);
    }
  }
  $path =~ s/^://;
  return $path;
}

# $File=&SearchPath($file,$path [,$mode] [,@suffixes]);
#   Searches through directories in $path for a file named $file.  The
#   full path is returned if one is found, or an empty string otherwise.
#   The file may exist with one of the @suffixes.  The mode is checked
#   similar to &CheckFilePath.
#
#   The first full path that matches the name and mode is returned.  If none
#   is found, an empty string is returned.
sub SearchPath {
  my($file,$path,$mode,@suff)=@_;
  my($f,$s,$d,@dir,$fs)=();
  $path=&FixPath($path,1,"r");
  @dir=split(/:/,$path);
  foreach $d (@dir) {
    $f="$d/$file";
    $f=~ s|//|/|g;
    return $f if (&CheckFilePath($f,$mode));
    foreach $s (@suff) {
      $fs="$f.$s";
      return $fs if (&CheckFilePath($fs,$mode));
    }
  }
  return "";
}


1;

########################################################################
########################################################################
# POD
########################################################################
########################################################################

=head1 NAME

Date::Manip - date manipulation routines

=head1 SYNOPSIS

 use Date::Manip;

 $date=&ParseDate(\@args)
 $date=&ParseDate($string)
 $date=&ParseDate(\$string)

 @date=&UnixDate($date,@format)
 $date=&UnixDate($date,@format)

 $delta=&ParseDateDelta(\@args)
 $delta=&ParseDateDelta($string)
 $delta=&ParseDateDelta(\$string)

 $d=&DateCalc($d1,$d2,$errref,$del)

 $date=&Date_SetTime($date,$hr,$min,$sec)
 $date=&Date_SetTime($date,$time)

 $date=&Date_GetPrev($date,$dow,$today,$hr,$min,$sec)
 $date=&Date_GetPrev($date,$dow,$today,$time)

 $date=&Date_GetNext($date,$dow,$today,$hr,$min,$sec)
 $date=&Date_GetNext($date,$dow,$today,$time)

 &Date_Init()
 &Date_Init("VAR=VAL",...)

 $version=&DateManipVersion

 $flag=&Date_IsWorkDay($date [,$flag]);

 $date=&Date_NextWorkDay($date,$off [,$time]);
 $date=&Date_PrevWorkDay($date,$off [,$time]);

The following routines are used by the above routines (though they can
also be called directly).  Make sure that $y is entered as the full 4
digit year (it will die if a 2 digit years is entered).  Most (if not
all) of the information below can be gotten from UnixDate which is really
the way I intended it to be gotten.

 $day=&Date_DayOfWeek($m,$d,$y)
 $secs=&Date_SecsSince1970($m,$d,$y,$h,$mn,$s)
 $secs=&Date_SecsSince1970GMT($m,$d,$y,$h,$mn,$s)
 $days=&Date_DaysSince999($m,$d,$y)
 $day=&Date_DayOfYear($m,$d,$y)
 $days=&Date_DaysInYear($y)
 $wkno=&Date_WeekOfYear($m,$d,$y,$first)
 $flag=&Date_LeapYear($y)
 $day=&Date_DaySuffix($d)
 $tz=&Date_TimeZone()

=head1 DESCRIPTION

This is a set of routines designed to make any common date/time
manipulation easy to do.  Operations such as comparing two times,
calculating a time a given amount of time from another, or parsing
international times are all easily done.

Date::Manip deals only with the Gregorian calendar (the one currently in
use).  The Julian calendar defined leap years as every 4th year.  The
Gregorian calendar improved this by making every 100th year NOT a leap
year, unless it was also the 400th year.  The Gregorian calendar has been
extrapolated back to the year 1000 AD and forward to the year 9999 AD.
Note that in historical context, the Julian calendar was in use until 1582
when the Gregorian calendar was adopted by the Catholic church.  Protestant
countries did not accept it until later; Germany and Netherlands in 1698,
British Empire in 1752, Russia in 1918.  Note that the Gregorian calendar
is itself imperfect.  Each year is on average 26 seconds too long, which
means that every 3,323 years, a day should be removed from the calendar.
No attempt is made to correct for that.

Date::Manip is therefore not equipped to truly deal with historacle dates,
but should be able to perform (virtually) any operation dealing with a
modern time and date.

Among other things, Date::Manip allow you to:

1.  Enter a date and be able to choose any format conveniant

2.  Compare two dates, entered in widely different formats to determine
    which is earlier

3.  Extract any information you want from ANY date using a format string
    similar to the Unix date command

4.  Determine the amount of time between two dates

5.  Add a time offset to a date to get a second date (i.e. determine the
    date 132 days ago or 2 years and 3 months after Jan 2, 1992)

6.  Work with dates with dates using international formats (foreign month
    names, 12-10-95 referring to October rather than December, etc.).

Each of these tasks is trivial (one or two lines at most) with this package.

Although the word date is used extensively here, it is actually somewhat
misleading.  Date::Manip works with the full date AND time (year, month,
day, hour, minute, second).

In the documentation below, US formats are used, but in most (if not all)
cases, a non-English equivalent will work equally well.

=head1 EXAMPLES

1.  Parsing a date from any conveniant format

  $date=&ParseDate("today");
  $date=&ParseDate("1st thursday in June 1992");
  $date=&ParseDate("05-10-93");
  $date=&ParseDate("12:30 Dec 12th 1880");
  $date=&ParseDate("8:00pm december tenth");
  if (! $date) {
    # Error in the date
  }

2.  Compare two dates

  $date1=&ParseDate($string1);
  $date2=&ParseDate($string2);
  if ($date1 lt $date2) {
    # date1 is earlier
  } else {
    # date2 is earlier (or the two dates are identical)
  }

3.  Extract information from a date.

  print &UnixDate("today","The time is now %T on %b %e, %Y.");
  =>  "The time is now 13:24:08 on Feb  3, 1996."

4.  The amount of time between two dates.

  $date1=&ParseDate($string1);
  $date2=&ParseDate($string2);
  $delta=&DateCalc($date1,$date2,\$err);
  => 0:0:DD:HH:MM:SS   the days, hours, minutes, and seconds between the two
  $delta=&DateCalc($date1,$date2,\$err,1);
  => YY:MM:DD:HH:MM:SS  the years, months, etc. between the two

  Read the documentation below for an explanation of the difference.

5.  To determine a date a given offset from another.

  $date=&DateCalc("today","+ 3hours 12minutes 6 seconds",\$err);
  $date=&DateCalc("12 hours ago","12:30 6Jan90",\$err);

  It even works with business days:

  $date=&DateCalc("today","+ 3 business days",\$err);

6.  To work with dates in another language.

  &Date_Init("Language=French","DateFormat=non-US");
  $date=&ParseDate("1er decembre 1990");

NOTE: Some date forms do not work as well in languages other than English,
but this is not because DateManip is incapable of doing so (almost nothing
in this module is language dependent).  It is simply that I do not have the
correct translation available for some words.  If there is a date form that
works in English but does not work in a language you need, let me know and
if you can provide me the translation, I will fix DateManip.

=head1 ROUTINES

=over 4

=item ParseDate

 $date=&ParseDate(\@args)
 $date=&ParseDate($string)
 $date=&ParseDate(\$string)

This takes an array or a string containing a date and parses it.  When the
date is included as an array (for example, the arguments to a program) the
array should contain a valid date in the first one or more elements
(elements after a valid date are ignored).  Elements containing a valid
date are shifted from the array.  The largest possible number of elements
which can be correctly interpreted as a valid date are always used.  If a
string is entered rather than an array, that string is tested for a valid
date.  The string is unmodified, even if passed in by reference.

A date actually includes 2 parts: date and time.  A time must include
hours and minutes and can optionally include seconds, fractional seconds,
an am/pm type string, and a timezone.  For example:

     HH:MN  [Zone]
     HH:MN:SS  [Zone]
     HH:MN am  [Zone]
     HH:MN:SS am  [Zone]
     HH:MN:SS:SSSS  [Zone]
     HH:MN:SS.SSSS am [Zone]

Hours can be written using 1 or 2 digits when the time follows the date and
is separated from the date with spaces or some other separator.  Any time
there is no space separating the time from a date and the part of the
date immediately preceding the hour is a digit, 2 digits must be used
for the hours.

Fractional seconds are also supported in parsing but the fractional part is
discarded.

Timezones always appear after the time and must be separated from all other
parts of the time/date by spaces.  For now, only rudimentary timezone
handling is done.  At the time the date is parsed, it is converted to a
specific time zone (which defaults to whatever time zone you are in, but
this can be overridden using the Date_Init routine described below).  After
that, the time zone is never used.  Once converted, information about the
time zone is no longer stored or used.

See the section below on TIMEZONEs for a list of all defined timezone
names.

Spaces in the date are almost always optional when there is absolutely
no ambiguity if they are not present.  Years can be entered as 2 or 4 digits,
days and months as 1 or 2 digits.  Both days and months must include 2 digits
whenver they are immediately adjacent to another part of the date or time
Valid formats for a full date and time (and examples of how Dec 10, 1965 at
9:00 pm might appear) are:
  DateTime
     Date=YYMMDD             1965121021:00:00
                             65121021:00

  Date Time
  Date%Time
    Date=mm%dd, mm%dd%YY     12/10/65 21:00
                             12 10 1965 9:00pm
    Date=mmm%dd, mmm%dd%YY   December-10-65-9:00:00pm
    Date=dd%mmm, dd%mmm%YY   10/December/65 9:00:00pm

  Date Time
    Date=mmmdd, mmmdd YY,    Dec10 65 9:00:00 pm
         mmmDDYY, mmm DDYY   December 10 1965 9:00pm

    Date=ddmmm, ddmmm YY, ddmmmYY, dd mmmYY
                             10Dec65 9:00:00 pm     10 December 1965 9:00pm

  TimeDate
  Time Date
  Time%Date
    Date=mm%dd, mm%dd%YY     9:00pm 12.10.65      21:00 12/10/1965
    Date=mmm%dd, mmm%dd%YY   9:00pm December/10/65
    Date=dd%mmm, dd%mmm%YY   9:00pm 10-December-65  21:00/10/Dec/65

  TimeDate
  Time Date
    Date=mmmdd, mmmdd YY, mmmDDYY
                             21:00:00DeCeMbEr10
    Date=ddmmm, ddmmm YY, ddmmmYY, dd mmmYY
                             21:00 10Dec95

Miscellaneous other allowed formats are:
  which dofw in mmm [at time]
  which dofw in mmm YY [at time]    "first sunday in june 1996 at 14:00"

  dofw week num [in YY] [at time]   "sunday week 22 in 1995"
  which dofw [in YY] [at time]      "22nd sunday in 1996 at noon"
  dofw which week [in YY] [at time] "sunday 22nd week in 1996"
  next/last dofw [at time]          "next friday at noon"
  in num weeks [at time]            "in 3 weeks at 12:00"
  num weeks ago [at time]           "3 weeks ago"
  dofw in num week [at time]        "Friday in 2 weeks"
  in num weeks on dofw [at time]    "in 2 weeks on friday"
  dofw num week ago [at time]       "Friday 2 weeks ago"
  num week ago dofw [at time]       "2 weeks ago friday"

In addition, the following strings are recognized:
  today
  now       (synonym for today)
  yesterday (exactly 24 hours before now)
  tomorrow  (exactly 24 hours from now)
  noon      (12:00:00)
  midnight  (00:00:00)

 %       One of the valid date separators: - . / or whitespace (the same
         character must be used for all occurences of a single date)
         example: mm%dd%YY works for 1-1-95, 1 1 95, or 1/1/95
 YY      year in 2 or 4 digit format
 MM      two digit month (01 to 12)
 mm      one or two digit month (1 to 12 or 01 to 12)
 mmm     month name or 3 character abbreviation
 DD      two digit day (01 to 31)
 dd      one or two digit day (1 to 31 or 01 to 31)
 HH      one or two digit hour in 12 or 24 hour mode (0 to 23 or 00 to 23)
 MN      two digit minutes (00 to 59)
 SS      two digit seconds (00 to 59)
 which   one of the strings (first-fifth, 1st-5th, or last)
 dofw    either the 3 character abbreviation or full name of a day of
         the week

Some things to note:

All strings are case insensitive.  "December" and "DEceMBer" both work.

When a part of the date is not given, defaults are used: year defaults
to current year; hours, minutes, seconds to 00.

In the above, the mm%dd formats can be switched to dd%mm by calling
Date_Init and telling it to use a non-US date format.

All "Date Time" and "DateTime" type formats allow the word "at" in them
(i.e.  Jan 12 at 12:00) (and at can replace the space).  So the following
are both acceptable: "Jan 12at12:00" and "Jan 12 at 12:00".

A time is usually entered in 24 hour mode.  It can be followed by "am" or
"pm" to force it to be read in in 12 hour mode.

The year may be entered as 2 or 4 digits.  If entered as 2 digits, it is
taken to be the year in the range CurrYear-89 to CurrYear+10.  So, if the
current year is 1996, the range is [1907 to 2006] so entering the year 00
refers to 2000, 05 to 2005, but 07 refers to 1907.  Use 4 digit years to
avoid confusion!

Any number of spaces or tabs can be used anyhere whitespace is appropriate.

Dates are always checked to make sure they are valid.

In all of the formats, the day of week ("Friday") can be entered anywhere
in the date and it will be checked for accuracy.  In other words,
  "Tue Jul 16 1996 13:17:00"
will work but
  "Jul 16 1996 Wednesday 13:17:00"
will not (because Jul 16, 1996 is Tuesday, not Wednesday).  Note that
depending on where the weekday comes, it may give unexpected results when
used in array context.  For example, the date ("Jun","25","Sun","1990")
would return June 25 of the current year since Jun 25, 1990 is not Sunday.

The times "12:00 am", "12:00 pm", and "midnight" are not well defined.  For
good or bad, I use the following convention in Date::Manip:
  midnight = 12:00am = 00:00:00
  noon     = 12:00pm = 12:00:00
and the day goes from 00:00:00 to 23:59:59.  In otherwords, midnight is the
beginning of a day rather than the end of one.  At midnight on July 5, July
5 has just begun.  The time 24:00:00 is NOT allowed.

The format of the date returned is YYYYMMDDHH:MM:SS.  The advantage of this
time format is that two times can be compared using simple string comparisons
to find out which is later.  Also, it is readily understood by a human.
Alternate forms can be used if that is more conveniant.  See Date_Init below
and the config variable Internal.

=item UnixDate

 @date=&UnixDate($date,@format)
 $date=&UnixDate($date,@format)

This takes a date and a list of strings containing formats roughly
identical to the format strings used by the UNIX date(1) command.  Each
format is parsed and an array of strings corresponding to each format is
returned.

$date must be of the form produced by &ParseDate.

The format options are:

 Year
     %y     year                     - 00 to 99
     %Y     year                     - 0001 to 9999
 Month, Week
     %m     month of year            - 01 to 12
     %f     month of year            - " 1" to "12"
     %b,%h  month abbreviation       - Jan to Dec
     %B     month name               - January to December
     %U     week of year, Sunday
            as first day of week     - 00 to 53
     %W     week of year, Monday
            as first day of week     - 00 to 53
 Day
     %j     day of the year          - 001 to 366
     %d     day of month             - 01 to 31

     %e     day of month             - " 1" to "31"
     %v     weekday abbreviation     - " S"," M"," T"," W","Th"," F","Sa"
     %a     weekday abbreviation     - Sun to Sat
     %A     weekday name             - Sunday to Saturday
     %w     day of week              - 0 (Sunday) to 6
     %E     day of month with suffix - 1st, 2nd, 3rd...
 Hour
     %H     hour                     - 00 to 23
     %k     hour                     - " 0" to "23"
     %i     hour                     - " 1" to "12"
     %I     hour                     - 01 to 12
     %p     AM or PM
 Minute, Second, Timezone
     %M     minute                   - 00 to 59
     %S     second                   - 00 to 59
     %s     seconds from Jan 1, 1970 GMT
                                     - negative if before 1/1/1970
     %o     seconds from Jan 1, 1970 in the current time zone
     %z,%Z  timezone (3 characters)  - "EDT"
 Date, Time
     %c     %a %b %e %H:%M:%S %Y     - Fri Apr 28 17:23:15 1995
     %C,%u  %a %b %e %H:%M:%S %z %Y  - Fri Apr 28 17:25:57 EDT 1995
     %g     %a, %d %b %Y %H:%M:%S %z - Fri, 28 Apr 1995 17:23:15 EDT
     %D,%x  %m/%d/%y                 - 04/28/95
     %l     date in ls(1) format
              %b %e $H:$M            - Apr 28 17:23  (if within 6 months)
              %b %e  %Y              - Apr 28  1993  (otherwise)
     %r     %I:%M:%S %p              - 05:39:55 PM
     %R     %H:%M                    - 17:40
     %T,%X  %H:%M:%S                 - 17:40:58
     %V     %m%d%H%M%y               - 0428174095
     %Q     %Y%m%d                   - 19961025
     %q     %Y%m%d%H%M%S             - 19961025174058
     %P     %Y%m%d%H%M%S             - 1996102517:40:58
     %F     %A, %B %e, %Y            - Sunday, January  1, 1996
 Other formats
     %n     insert a newline character
     %t     insert a tab character
     %%     insert a `%' character
     %+     insert a `+' character
 The following formats are currently unused but may be used in the future:
     GJKLNO 1234567890 !@#$^&*()_|-=\`[];',./~{}:<>?
 They currently insert the character following the %, but may (and probably
 will) change in the future as new formats are requested.

If a lone percent is the final character in a format, it is ignored.

Note that the ls format applies to date within the past OR future 6 months!

Note that the %s format was introduced in version 5.07.  Prior to that,
%s referred to the seconds since 1/1/70.  This was moved to %o in 5.07.

This routine is loosely based on date.pl (version 3.2) by Terry McGonigal.
No code was used, but most of his formats were.

=item ParseDateDelta

 $delta=&ParseDateDelta(\@args)
 $delta=&ParseDateDelta($string)
 $delta=&ParseDateDelta(\$string)

This takes an array and shifts a valid delta date (an amount of time)
from the array.  Recognized deltas are of the form:
  +Yy +Mm +Ww +Dd +Hh +MNmn +Ss
      examples:
         +4 hours +3mn -2second
         + 4 hr 3 minutes -2
         4 hour + 3 min -2 s
  +Y:+M:+D:+H:+MN:+S
      examples:
         0:0:0:4:3:-2
         +4:3:-2
  mixed format
      examples:
         4 hour 3:-2

A field in the format +Yy is a sign, a number, and a string specifying
the type of field.  The sign is "+", "-", or absent (defaults to the
next larger element).  The valid strings specifying the field type
are:
   y:  y, yr, year, years
   m:  m, mon, month, months
   w:  w, wk, ws, wks, week, weeks
   d:  d, day, days
   h:  h, hr, hour, hours
   mn: mn, min, minute, minutes
   s:  s, sec, second, seconds

Also, the "s" string may be omitted.  The sign, number, and string may
all be separated from each other by any number of whitespaces.

In the date, all fields must be given in the order: y m d h mn s.  Any
number of them may be omitted provided the rest remain in the correct
order.  In the 2nd (colon) format, from 2 to 6 of the fields may be given.
For example +D:+H:+MN:+S may be given to specify only four of the fields.
In any case, both the MN and S field may be present.  No spaces may be
present in the colon format.

Deltas may also be given as a combination of the two formats.  For example,
the following is valid: +Yy +D:+H:+MN:+S.  Again, all fields must be given
in the correct order.

The word "in" may be prepended to the delta ("in 5 years") and the word
"ago" may be appended ("6 months ago").  The "in" is completely ignored.
The "ago" has the affect of reversing all signs that appear in front of the
components of the delta.  I.e. "-12 yr 6 mon ago" is identical to "+12yr
+6mon" (don't forget that there is an impled minus sign in front of the 6
because when no sign is explicitely given, it carries the previously
entered sign).

The "week" field does not occur in the colon separated delta.  The reason
for this is to maintain backward compatibility with previous versions of
Date::Manip.  Parsing of weeks was only added in version 5.07.  At this
point, rather than change the internal format of the delta to
"Y:M:W:D:H:MN:S", I simply added the weeks to the days (1 week = 7 days) in
order to be compatible with previous versions.  So, they are not parsed in
the colon format, only in the first format.  Hopefully, this will not
result in too much confusion.

One thing is worth noting.  The year/month and day/hour/min/sec parts are
returned in a "normalized" form.  That is, the signs are adjusted so as to
be all positive or all negative.  For example, "+ 2 day - 2hour" does not
return "0:0:2:-2:0:0".  It returns "+0:0:1:22:0:0" (1 day 22 hours which is
equivalent).  I find (and I think most others agree) that this is a more
useful form.

Since the year/month and day/hour/min/sec parts must be normalized
separately there is the possibility that the sign of the two parts will be
different.  So, the delta "+ 2years -10 months - 2 days + 2 hours" produces
the delta "+1:2:-1:22:0:0".

For backwards compatibility, it is possible to include a sign for all
elements that is output.  See the configuration variable DeltaSigns below.

=item DateCalc

 $d=&DateCalc($d1,$d2,\$err [,$mode])

This takes two dates, deltas, or one of each and performs the appropriate
calculation with them.  Dates must be in the format given by &ParseDate and
or must be a string which can be parsed as a date.  Deltas must be in the
format returned by &ParseDateDelta or must be a string that can be parsed
as a delta.  Two deltas add together to form a third delta.  A date and a
delta returns a 2nd date.  Two dates return a delta (the difference between
the two dates).

Note that in many cases, it is somewhat ambiguous what the delta actually
refers to.  Although it is ALWAYS known how many months in a year, hours in
a day, etc., it is NOT known how many days form a month.  As a result, the
part of the delta containing month/year and the part with sec/min/hr/day
must be treated separately.  For example, "Mar 31, 12:00:00" plus a delta
of 1month 2days would yield "May 2 12:00:00".  The year/month is first
handled while keeping the same date.  Mar 31 plus one month is Apr 31 (but
since Apr only has 30 days, it becomes Apr 30).  Apr 30 + 2 days is May 2.
As a result, in the case where two dates are entered, the resulting delta
can take on two different forms.  By default ($mode=0), an absolutely
correct delta (ignoring daylight savings time) is returned in days, hours,
minutes, and seconds.

If $mode is 1, the math is done using an approximate mode where a delta is
returned using years and months as well.  The year and month part is
calculated first followed by the rest.  For example, the two dates "Mar 12
1995" and "Apr 13 1995" would have an exact delta of "31 days" but in the
approximate mode, it would be returned as "1 month 1 day".  Also, "Mar 31"
and "Apr 30" would have deltas of "30 days" or "1 month" (since Apr 31
doesn't exist, it drops down to Apr 30).  Approximate mode is a more human
way of looking at things (you'd say 1 month and 2 days more often then 33
days), but it is less meaningful in terms of absolute time.  In approximate
mode $d1 and $d2 must be dates.  If either or both is a delta, the
calculation is done in exact mode.

If $mode is 2, a business mode is used.  That is, the calculation is done
using business days, ignoring holidays, weekends, etc.  In order to
correctly use this mode, a config file must exist which contains the
section defining holidays (see documentation on the config file below).
The config file can also define the work week and the hours of the work
day, so it is possible to have different config files for different
businesses.

For example, if a config file defines the workday as 08:00 to 18:00, a
workweek consisting of Mon-Sat, and the standard (American) holidays, then
from Tuesday at 12:00 to the following Monday at 14:00 is 5 days and 2
hours.  If the "end" of the day is reached in a calculation, it
autmoatically switches to the next day.  So, Tuesday at 12:00 plus 6 hours
is Wednesday at 08:00 (provided Wed is not a holiday).  Also, a date that
is not during a workday automatically becomes the start of the next
workday.  So, Sunday 12:00 and Monday at 03:00 both automatically becomes
Monday at 08:00 (provided Monday is not a holiday).  In business mode, any
combination of date and delta may be entered, but a delta should not
contain a year or month field (weeks are fine though).

See below for some additional comments about business mode calculations.

Any other non-nil value of $mode is treated as $mode=1 (approximate mode).

The mode can be automatically set in the dates/deltas passed by including a
key word somewhere in it.  For example, in English, if the word
"approximately" is found in either of the date/delta arguments, approximate
mode is forced.  Likewise, if the word "business" or "exactly" appears,
business/exact mode is forced (and $mode is ignored).  So, the two
following are equivalent:

   $date=&DateCalc("today","+ 2 business days",\$err);
   $date=&DateCalc("today","+ 2 days",\$err,2);

Note that if the keyword method is used instead of passing in $mode, it is
important that the keyword actually appear in the argument passed in to
DateCalc.  The following will NOT work:

   $delta=&ParseDateDelta("+ 2 business days");
   $today=&ParseDate("today");
   $date=&DateCalc($today,$delta,\$err);

because the mode keyword is removed from a date/delta by the parse routines,
and the mode is reset each time a parse routine is called.  Since DateCalc
parses both of its arguments, whatever mode was previously set is ignored.

$err is set to:
   1 is returned if $d1 is not a delta or date
   2 is returned if $d2 is not a delta or date
   3 is returned if the date is outside the years 1000 to 9999

Nothing is returned if an error occurs.

When a delta is returned, the signs such that it is strictly positive or
strictly negative ("1 day - 2 hours" would never be returned for example).
The only time when this cannot be enforced is when two deltas with a
year/month component are entered.  In this case, only the signs on the
day/hour/min/sec part are standardized.

=item Date_SetTime

 $date=&Date_SetTime($date,$hr,$min,$sec)
 $date=&Date_SetTime($date,$time)

This takes a date sets the time in that date.  For example, to get
the time for 7:30 tomorrow, use the lines:

   $date=&ParseDate("tomorrow")
   $date=&Date_SetTime($date,"7:30")

=item Date_GetPrev

 $date=&Date_GetPrev($date,$dow, $curr [,$hr,$min,$sec])
 $date=&Date_GetPrev($date,$dow, $curr [,$time])
 $date=&Date_GetPrev($date,undef,$curr,$hr,$min,$sec)
 $date=&Date_GetPrev($date,undef,$curr,$time)

If $dow is defined, it is a day of week (a string such as "Fri" or a number
from 0 to 6).  The date of the previous $dow is returned.  If $date falls
on this day of week, the date returned will be $date (if $curr is non-zero)
or a week earlier (if $curr is 0).  If a time is passed in (either as
separate hours, minutes, seconds or as a time in HH:MM:SS or HH:MM format),
the time on this date is set to it.  The following examples should
illustrate the use of Date_GetPrev:

    date                   dow    curr  time            returns
    Fri Nov 22 18:15:00    Thu    0     12:30           Thu Nov 21 12:30:00
    Fri Nov 22 18:15:00    Fri    0     12:30           Fri Nov 15 12:30:00
    Fri Nov 22 18:15:00    Fri    1     12:30           Fri Nov 22 12:30:00

If $dow is undefined, then a time must be entered, and the date returned is
the previous occurence of this time.  If $curr is non-zero, the current
time is returned if it matches the criteria passed in.  In other words, the
time returned is the last time that a digital clock (in 24 hour mode) would
have displayed the time you pass in.  If you define hours, minutes and
seconds default to 0 and you might jump back as much as an entire day.  If
hours are undefined, you are looking for the last time the minutes/seconds
appeared on the digital clock, so at most, the time will jump back one hour.

    date               curr  hr     min    sec      returns
    Nov 22 18:15:00    0/1   18     undef  undef    Nov 22 18:00:00
    Nov 22 18:15:00    0/1   18     30     0        Nov 21 18:30:00
    Nov 22 18:15:00    0     18     15     undef    Nov 21 18:15:00
    Nov 22 18:15:00    1     18     15     undef    Nov 22 18:15:00
    Nov 22 18:15:00    0     undef  15     undef    Nov 22 17:15:00
    Nov 22 18:15:00    1     undef  15     undef    Nov 22 18:15:00


=item Date_GetNext

 $date=&Date_GetNext($date,$dow, $curr [,$hr,$min,$sec])
 $date=&Date_GetNext($date,$dow, $curr [,$time])
 $date=&Date_GetNext($date,undef,$curr,$hr,$min,$sec)
 $date=&Date_GetNext($date,undef,$curr,$time)

Similar to Date_GetPrev.

=item Date_DayOfWeek

 $day=&Date_DayOfWeek($m,$d,$y);

Returns the day of the week (0 for Sunday, 6 for Saturday).  Dec 31, 0999
was Tuesday.

=item Date_SecsSince1970

 $secs=&Date_SecsSince1970($m,$d,$y,$h,$mn,$s)

Returns the number of seconds since Jan 1, 1970 00:00 (negative if date is
earlier).

=item Date_SecsSince1970GMT

 $secs=&Date_SecsSince1970GMT($m,$d,$y,$h,$mn,$s)

Returns the number of seconds since Jan 1, 1970 00:00 GMT (negative if date
is earlier).  If CurrTZ is "IGNORE", the number will be identical to
Date_SecsSince1970 (i.e. the date given will be treated as being in GMT).

=item Date_DaysSince999

 $days=&Date_DaysSince999($m,$d,$y)

Returns the number of days since Dec 31, 0999.

=item Date_DayOfYear

 $day=&Date_DayOfYear($m,$d,$y);

Returns the day of the year (001 to 366)

=item Date_DaysInYear

 $days=&Date_DaysInYear($y);

Returns the number of days in the year (365 or 366)

=item Date_WeekOfYear

 $wkno=&Date_WeekOfYear($m,$d,$y,$first);

Figure out week number.  $first is the first day of the week which is
usually 0 (Sunday) or 1 (Monday), but could be any number between 0 and 6
in practice.

=item Date_LeapYear

 $flag=&Date_LeapYear($y);

Returns 1 if the argument is a leap year
Written by David Muir Sharnoff <muir@idiom.com>

=item Date_DaySuffix

 $day=&Date_DaySuffix($d);

Add `st', `nd', `rd', `th' to a date (ie 1st, 22nd, 29th).  Works for
international dates.

=item Date_TimeZone

 $tz=&Date_TimeZone

This returns a timezone.  It looks in the following places for a timezone
in the following order:

   $ENV{TZ}
   $main::TZ
   unix 'date' command
   /etc/TIMEZONE

If it's not found in any of those places, an error occurs:

   ERROR: Date::Manip unable to determine TimeZone.

Date_TimeZone is able to read zones of the format PST8PDT (see TIMEZONES
documentation below).

=item Date_ConvTZ

 $date=&Date_ConvTZ($date,$from)
 $date=&Date_ConvTZ($date,$from,$to)

This converts a date (which MUST be in the format returned by ParseDate)
from one timezone to another.  The behavior of Date_ConvTZ depends on
whether it is called with 2 or 3 arguments.

If it is called with 2 arguments, $date is assumed to be in timezone given
in $from and it is converted to the timzone specified by the config
variable ConvTZ.  If ConvTZ is set to "IGNORE", no conversion is done and
$date is returned unmodified (see documentation on ConvTZ below).  This
form is most often used internally by the Date::Manip module.  The 3
argument form is of more use to most users.

If Date_ConvTZ is called with 3 arguments, the config variable ConvTZ is
ignored and $date is given in the timezone $from and is converted to the
timzone $to.  If $from is not given, it defaults to the working timezone.
NOTE: As in all other cases, the $date returned from Date_ConvTZ has no
timezone information included as part of it, so calling UnixDate with the
"%z" format will return the timezone that Date::Manip is working in
(usually the local timezone).

Example:  To convert 2/2/96 noon PST to CST (regardless of what timezone
you are in, do the following:

 $date=&ParseDate("2/2/96 noon");
 $date=&Date_ConvTZ($date,"PST","CST");

Both timezones MUST be in one of the formst listed below in the section
TIMEZONES.

=item Date_Init

 $flag=&Date_Init();
 $flag=&Date_Init("VAR=VAL","VAR=VAL",...);

Normally, it is not necessary to explicitely call Date_Init.  The first
time any of the other routines are called, Date_Init will be called to set
everything up.  If for some reason you want to change the configuration of
Date::Manip, you can pass the appropriate string or strings into Date_Init
to reinitizize things.

The strings to pass in are of the form "VAR=VAL".  Any number may be
included and they can come in any order.  VAR may be any configuration
variable.  A list of all configuaration variables is given in the section
CUSTOMIZING DATE::MANIP below.  VAL is any allowed value for that variable.
For example, to switch from English to French and use non-US format (so
that 12/10 is Oct 12), do the following:

  &Date_Init("Language=French","DateFormat=nonUS");

Note that the usage of Date_Init changed with version 5.07.  The old
calling convention is allowed but is depreciated.

If you change timezones in the middle of using Date::Manip, comparing dates
from before the switch to dates from after the switch will produce incorrect
results.

=item Date_IsWorkDay

  $flag=&Date_IsWorkDay($date [,$flag]);

This returns 1 if $date is a work day.  If $flag is non-zero, the time is
checked to see if it falls within work hours.

=item Date_NextWorkDay

  $date=&Date_NextWorkDay($date,$off [,$time]);

Finds the day $off work days from now.  If $time is passed in, we must also
take into account the time of day.

If $time is not passed in, day 0 is today (if today is a workday) or the
next work day if it isn't.  In any case, the time of day is unaffected.

If $time is passed in, day 0 is now (if now is part of a workday) or the
start of the very next work day.

=item Date_PrevWorkDay

  $date=&Date_PrevWorkDay($date,$off [,$time]);

Similar to Date_NextWorkDay.

=item DateManipVersion

  $version=&DateManipVersion

Returns the version of Date::Manip.

=back

=head1 TIMEZONES

The following timezone names are currently understood (and can be used in
parsing dates).  These are zones defined in RFC 822.

    Universal:  GMT, UT
    US zones :  EST, EDT, CST, CDT, MST, MDT, PST, PDT
    Military :  A to Z (except J)
    Other    :  +HHMM or -HHMM

In addition, the following timezone abbreviations are also accepted.  In a
few cases, the same abbreviation is used for two different timezones (for
example, NST stands for Newfoundland Standare -0330 and North Sumatra +0630).
In these cases, only 1 of the two is available.  The one preceded by a "#"
sign is NOT available but is documented here for completeness.  This list of
zones comes from the Time::Zone module by Graham Barr, David Muir Sharnoff,
and Paul Foley.

      IDLW    -1200    International Date Line West
      NT      -1100    Nome
      HST     -1000    Hawaii Standard
      CAT     -1000    Central Alaska
      AHST    -1000    Alaska-Hawaii Standard
      YST     -0900    Yukon Standard
      HDT     -0900    Hawaii Daylight
      YDT     -0800    Yukon Daylight
      PST     -0800    Pacific Standard
      PDT     -0700    Pacific Daylight
      MST     -0700    Mountain Standard
      MDT     -0600    Mountain Daylight
      CST     -0600    Central Standard
      CDT     -0500    Central Daylight
      EST     -0500    Eastern Standard
      EDT     -0400    Eastern Daylight
      AST     -0400    Atlantic Standard
     #NST     -0330    Newfoundland Standard       nst=North Sumatra    +0630
      NFT     -0330    Newfoundland
     #GST     -0300    Greenland Standard          gst=Guam Standard    +1000
      BST     -0300    Brazil Standard             bst=British Summer   +0100
      ADT     -0300    Atlantic Daylight
      NDT     -0230    Newfoundland Daylight
      AT      -0200    Azores
      WAT     -0100    West Africa
      GMT     +0000    Greenwich Mean
      UT      +0000    Universal (Coordinated)
      UTC     +0000    Universal (Coordinated)
      WET     +0000    Western European
      CET     +0100    Central European
      FWT     +0100    French Winter
      MET     +0100    Middle European
      MEWT    +0100    Middle European Winter
      SWT     +0100    Swedish Winter
     #BST     +0100    British Summer              bst=Brazil standard  -0300
      EET     +0200    Eastern Europe, USSR Zone 1
      FST     +0200    French Summer
      MEST    +0200    Middle European Summer
      SST     +0200    Swedish Summer              sst=South Sumatra    +0700
      BT      +0300    Baghdad, USSR Zone 2
      IT      +0330    Iran
      ZP4     +0400    USSR Zone 3
      ZP5     +0500    USSR Zone 4
      IST     +0530    Indian Standard
      ZP6     +0600    USSR Zone 5
      NST     +0630    North Sumatra               nst=Newfoundland Std -0330
      WAST    +0700    West Australian Standard
     #SST     +0700    South Sumatra, USSR Zone 6  sst=Swedish Summer   +0200
      JT      +0730    Java (3pm in Cronusland!)
      CCT     +0800    China Coast, USSR Zone 7
      WADT    +0800    West Australian Daylight
      JST     +0900    Japan Standard, USSR Zone 8
      CAST    +0930    Central Australian Standard
      EAST    +1000    Eastern Australian Standard
      GST     +1000    Guam Standard, USSR Zone 9  gst=Greenland Std    -0300
      CADT    +1030    Central Australian Daylight
      EADT    +1100    Eastern Australian Daylight
      IDLE    +1200    International Date Line East
      NZST    +1200    New Zealand Standard
      NZT     +1200    New Zealand
      NZDT    +1300    New Zealand Daylight

Others can be added in the future upon request.

DateManip needs to be able to determine the local timezone.  It can do this
by certain things such as the TZ environment variable (see Date_TimeZone
documentation above) or useing the TZ config variable (described below).
In either case, the timezone can be of the form STD#DST (for example
EST5EDT).  Both the standard and daylight savings time abbreviations must
be in the table above in order for this to work.  Also, this form may NOT
be used when parsing a date as there is no way to determine whether the
date is in daylight saving time or not.  The following forms are also
available and are treated similar to the STD#DST forms:

      US/Pacific
      US/Mountain
      US/Central
      US/Eastern

=head1 BUSINESS MODE

Anyone using business mode is going to notice a few quirks about it which
should be explained.  When I designed business mode, I had in mind what UPS
tells me when they say 2 day delivery, or what the local business which
promises 1 business day turnaround really means.

If you do a business day calculation (with the workday set to 9:00-5:00),
you will get the following:

   Saturday at noon + 1 business day = Tuesday at 9:00
   Saturday at noon - 1 business day = Friday at 9:00

What does this mean?

We have a business that works 9-5 and they have a drop box so I can drop
things off over the weekend and they promise 1 business day turnaround.  If
I drop something off Friday night, Saturday, or Sunday, it doesn't matter.
They're going to get started on it Monday morning.  It'll be 1 business day
to finish the job, so the earliest I can expect it to be done is around
17:00 Monday or 9:00 Tuesday morning.  Unfortunately, there is some
ambiguity as to what day 17:00 really falls on, similar to the ambiguity
that occurs when you ask what day midnight falls on.  Although it's not the
only answer, Date::Manip treats midnight as the beginning of a day rather
than the end of one.  In the same way, 17:00 is equivalent to 9:00 the next
day and any time the date calculations encounter 17:00, it automatically
switch to 9:00 the next day.  Although this introduces some quirks, I think
this is justified.  You just have to treat 9:00 as being ambiguous (in the
same way you treat midnight as being ambiguous).

Equivalently, if I want a job to be finished on Saturday (despite the fact
that I cannot pick it up since the business is closed), I have to drop it
off no later than Friday at 9:00.  That gives them a full business day to
finish it off.  Of course, I could just as easily drop it off at 17:00
Thursday, or any time between then and 9:00 Friday.  Again, it's a matter
of treating 9:00 as ambiguous.

So, in case the business date calculations ever produce results that you
find confusing, I believe the solution is to write a wrapper which,
whenever it sees a date with the time of exactly 9:00, it treats it
specially (depending on what you want.

So Saturday + 1 business day = Tuesday at 9:00 (which means anything
from Monday 17:00 to Tuesday 9:00), but Monday at 9:01 + 1 business
day = Tuesday at 9:01 which is exact.

If this is not exactly what you have in mind, don't use the DateCalc
routine.  You can probably get whatever behavior you want using the
routines Date_IsWorkDay, Date_NextWorkDay, and Date_PrevWorkDay described
above.

=head1 CUSTOMIZING DATE::MANIP

There are a number of variables which can be used to customize the way
Date::Manip behaves.  There are also several ways to set these variables.

At the top of the Manip.pm file, there is a section which contains all
customization variables.  These provide the default values.

These can be overridden in a global config file if one is present (this
file is optional).  If the GlobalCnf variable is set in the Manip.pm file,
it contains the full path to a config file.  If the file exists, it's
values will override those set in the Manip.pm file.  A sample config file
is included with the Date::Manip distribution.  Modify it as appropriate
and copy it to some appropriate directory and set the GlobalCnf variable
in the Manip.pm file.

Each user can have a personal config file which is of the same form as
the global config file.  The variables PersonalCnf and PersonalCnfPath
set the name and search path for the personal config file.

Finally, any variables passed in through Date_Init override all other
values.

A config file can be composed of several sections (though only 2 of them
are currently used).  The first section sets configuration varibles.  Lines
in this section are of the form:

   VARIABLE = VALUE

For example, to make the default language French, include the line:

   Language = French

Only variables described below may be used.  Blank lines and lines beginning
with a pound sign (#) are ignored.  All spaces are optional and strings are
case insensitive.

A line which starts with an asterix (*) designates a new section.  The only
section currently used is the Holiday section.  All lines are of the form:

   DATE = HOLIDAY

HOLIDAY is the name of the holiday (or it can be blank in which case the
day will still be treated as a holiday... for example the day after
Thanksgiving or Christmas is often a work holiday though neither are
named).

DATE is a string which can be parsed to give a valid date in any year.  It
can be of the form

   Date
   Date + Delta
   Date - Delta

A valid holiday section would be:

   *Holiday

   1/1                             = New Year's Day
   third Monday in Feb             = Presidents' Day
   fourth Thu in Nov               = Thanksgiving

   # The Friday after Thanksgiving is an unnamed holiday most places
   fourth Thu in Nov + 1 day       =

In a Date + Delta or Date - Delta string, you can use business mode by
including the appropriate string (see documentation on DateCalc) in the
Date or Delta.  So (in English), the first workday before Christmas could
be defined as:

   12/25 - 1 business day          =

All Date::Manip variables which can be used are described in the following
section.

=over 4

=item IgnoreGlobalCnf

If this variable is used (any value is ignored), the global config file
is not read.  It must be present in the initial call to Date_Init or the
global config file will be read.

=item EraseHolidays

If this variable is used (any value is ignored), the current list of
defined holidays is erased.  A new set will be set the next time a
config file is read in.

=item PersonalCnf

This variable can be passed into Date_Init to read a different personal
configuration file.  It can also be included in the global config file
to define where personal config files live.

=item PersonalCnfPath

Used in the same way as the PersonalCnf option.  You can use tilde (~)
expansions when defining the path.

=item Language

Date::Manip can be used to parse dates in many different languages.
Currently, it is configured to read English, Swedish, and French dates,
but others can be added easily.  Language is set to the language used to
parse dates.

=item DateFormat

Different countries look at the date 12/10/96 as Dec 10 or Oct 12.  In the
United States, the first is most common, but this certainly doesn't hold
true for other countries.  Setting DateFormat to "US" forces the first
behavior (Dec 10).  Setting DateFormat to anything else forces the second
behavior (Oct 12).

=item TZ

Date::Manip is able to understand some timezones (and others will be added
in the future).  At the very least, all zones defined in RFC 822 are
supported.  Currently supported zones are listed in the TIMEZONES section
above and all timezones should be entered as one of them.

Date::Manip must be able to determine the timezone the user is in.  It does
this by looking in the following places:

   the environment variable TZ
   the variable $main::TZ
   the file /etc/TIMEZONE
   the 5th element of the unix "date" command (not available on NT machines)

At least one of these should contain a timezone in one of the supported
forms.  If it doesn't, the TZ variable must be set to contain the local
timezone in the appropriate form.

The TZ variable will override the other methods of determining the
timezone, so it should probably be left blank if any of the other methods
will work.  Otherwise, you will have to modify the variable every time you
switch to/from daylight savings time.

=item ConvTZ

All date comparisons and calculations must be done in a single time zone in
order for them to work correctly.  So, when a date is parsed, it should be
converted to a specific timezone.  This allows dates to easily be compared
and manipulated as if they are all in a single timezone.

The ConvTZ variable determines which timezone should be used to store dates
in.  If it is left blank, all dates are converted to the local timezone
(see the TZ variable above).  If it is set to one of the timezones listed
above, all dates are converted to this timezone.  Finally, if it is set to
the string "IGNORE", all timezone information is ignored as the dates are
read in (in this case, the two dates "1/1/96 12:00 GMT" and "1/1/96 12:00
EST" would be treated as identical).

=item Internal

When a date is parsed using ParseDate, that date is stored in an internal
format which is understood by the Date::Manip routines UnixDate and
DateCalc.  Originally, the format used to store the date internally was:

   YYYYMMDDHH:MN:SS

It has been suggested that I remove the colons (:) to shorten this to:

   YYYYMMDDHHMNSS

The main advantage of this is that some databases are colon delimited which
makes storing date from Date::Manip tedious.

In order to maintain backwards compatibility, the Internal varialbe was
introduced.  Set it to 0 (to use the old format) or 1 (to use the new
format).

=item FirstDay

It is sometimes necessary to know what day of week is regarded as first.
By default, this is set to sunday, but many countries and people will
prefer monday (and in a few cases, a different day may be desired).  Set
the FirstDay variable to be the first day of the week (0=sunday to
6=saturday).  Incidentally, monday should be chosen as the default to be in
complete accordance with ISO 8601.

=item WorkWeekBeg, WorkWeekEnd

The first and last days of the work week.  By default, monday and friday.
WorkWeekBeg must come before WorkWeekEnd numerically.  The days are
numbered from 0 (sunday) to 6 (saturday).  There is no way to handle an odd
work week of Thu to Mon for example.

=item WorkDay24Hr

If this is non-nil, a work day is treated as being 24 hours long.  The
WorkDayBeg and WorkDayEnd variables are ignored in this case.

=item WorkDayBeg, WorkDayEnd

The times when the work day starts and ends.  WorkDayBeg must come before
WorkDayEnd (i.e. there is no way to handle the night shift where the work
day starts one day and ends another).  Also, the workday MUST be more than
one hour long (of course, if this isn't the case, let me know... I want a
job there!).

The time in both can be in any valid time format (including international
formats), but seconds will be ignored.

=item DeltaSigns

Prior to Date::Manip version 5.07, a negative delta would put negative
signs in front of every component (i.e. "0:0:-1:-3:0:-4").  By default,
5.07 changes this behavior to print only 1 or two signs in front of the
year and day elements (even if these elements might be zero) and the sign
for year/month and day/hour/minute/second are the same.  Setting this
variable to non-zero forces deltas to be stored with a sign in front of
every element (including elements equal to 0).

=back

=head1 BACKWARDS INCOMPATIBILITIES

For the most part, Date::Manip has remained backward compatible at every
release.  There have been a few minor incompatibilities introduced at
various stages.

Version 5.07 introduced 2 minor incompatibilities.  In the UnixDate
command, the "%s" format changed.  In version 5.06, "%s" returned the
number of seconds since Jan 1, 1970 in the current timezone.  In 5.07,
it returns the number of seconds since Jan 1, 1970 GMT.  The "%o" format
was added to return what "%s" previously did.

Also in 5.07, the format for the deltas returned by ParseDateDelta changed.
Previously, each element of a delta had a sign attached to it
(+1:+2:+3:+4:+5:+6).  The new format removes all unnecessary signs by
default (+1:2:3:4:5:6).  Also, because of the way deltas are normalized
(see documentation on ParseDateDelta), at most two signs are included.
For backwards compatibility, the config variable DeltaSigns was added.  If
set to 1, all deltas include all 6 signs.

Finally, in 5.07 the format of the Date_Init calling arguments changed.  The
old method

  &Date_Init($language,$format,$tz,$convtz);

is still supported, but this support will likely disappear in the future.
Use the new calling format instead:

  &Date_Init("var=val","var=val",...);

One more important incompatibility is projected for ParseDate in the next
major release of Date::Manip.  The next release will support full ISO 8601
date formats including the format YY-MM-DD.  The current version of
ParseDate supports the format MM-DD-YY, which is commonly used in the US,
but is not part of any standard.  Unfortunately, there is no way to
unambiguously look at a date of the format XX-XX-XX and determine whether
it is YY-MM-DD or MM-DD-YY.  As a result, the MM-DD-YY format will no
longer be supported in favor of the YY-MM-DD format.  The MM/DD/YY and
MM-DD-YYYY formats WILL still be supported!

=head1 COMMON PROBLEMS

Perhaps the most common problem occurs when you get the error:

   Error: Date::Manip unable to determine TimeZone.

Date::Manip tries hard to determine the local timezone, but on some
machines, it cannot do this (especially those without a unix date
command... i.e. Microsoft Windows systems).  To fix this, just set the TZ
variable, either at the top of the Manip.pm file, or in the DateManip.cnf
file.  I suggest using the form "EST5EDT" so you don't have to change it
every 6 months when going to or from daylight savings time.

=head1 KNOWN PROBLEMS

=over 4

=item Daylight Savings Times

Date::Manip does not handle daylight savings time, though it does handle
timezones to a certain extent.  Converting from EST to PST works fine.
Going from EST to PDT is unreliable.

The following examples are run in the winter of the US East coast (i.e.
in the EST timezone).

	print UnixDate(ParseDate("6/1/97 noon"),"%u"),"\n";
        => Sun Jun  1 12:00:00 EST 1997

June 1 EST does not exist.  June 1st is during EDT.  It should print:

        => Sun Jun  1 00:00:00 EDT 1997

Even explicitely adding the timezone doesn't fix things (if anything, it
makes them worse):

	print UnixDate(ParseDate("6/1/97 noon EDT"),"%u"),"\n";
        => Sun Jun  1 11:00:00 EST 1997

Date::Manip converts everything to the current timezone (EST in this case).

Related problems occur when trying to do date calculations over a timezone
change.  These calculations may be off by an hour.

Also, if you are running a script which uses Date::Manip over a period of
time which starts in one time zone and ends in another (i.e. it switches
form Daylight Savings Time to Standard Time or vice versa), many things may
be wrong (especially elapsed time).

I hope to fix these problems in the next release so that it would convert
everything to the current zones (EST or EDT).

=item Sorting Problems

If you use Date::Manip to sort a number of dates, you must call Date_Init
either explicitely, or by way of some other Date::Manip routine before it
is used in the sort.  For example, the following code fails:

   use Date::Manip;
   # &Date_Init;
   sub sortDate {
       my($date1, $date2);
       $date1 = &ParseDate($a);
       $date2 = &ParseDate($b);
       return ($date1 cmp $date2);
   }
   @date = ("Fri 16 Aug 96",
            "Mon 19 Aug 96",
            "Thu 15 Aug 96");
   @i=sort sortDate @dates;

but if you uncomment the Date_Init line, it works.  The reason for this is
that the first time you call Date_Init, it initializes a number of items
used by Date::Manip.  Some of these are sorted.  It turns out that perl
(5.003 and earlier) has a bug in it which does not allow a sort within a
sort.  The next version (5.004) may fix this.  For now, the best thing to
do is to call Date_Init explicitely.  NOTE: This is an extremely
inefficient way to sort data.  Instead, you should translate the dates to
the Date::Manip internal format, sort them using a normal string
comparison, and then convert them back to the format desired using
UnixDate.

=item RCS Control

If you try to put Date::Manip under RCS control, you are going to have
problems.  Apparently, RCS replaces strings of the form "$Date...$" with
the current date.  This form occurs all over in Date::Manip.  Since very
few people will ever have a desire to do this (and I don't use RCS), I have
not worried about it.

=back

=head1 AUTHOR

Sullivan Beck (beck@qtp.ufl.edu)

=cut

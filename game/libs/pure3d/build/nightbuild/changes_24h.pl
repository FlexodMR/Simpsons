# perl script to a time 24 hours previous to the current time

# calc 24 hours in seconds
$secs24h = 60 * 60 * 24;

# get current time in seconds
$tToday = time;

# subtract a day
$tYesterday = $tToday - $secs24h;

# convert yesterday time to string tokens
($secY, $minY, $hourY, $mdayY, $monY, $yearY, $wdayY, $ydayY, $isdstY) = localtime($tYesterday); 

# adjust year is year is number of years since 1900
$yearY += 1900;

#adjust month since index is from 0 - 11
$monY += 1;

# get current time in string tokens
($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime(time); 

# adjust year is year is number of years since 1900
$year += 1900;

#adjust month since index is from 0 - 11
$mon += 1;

# format strings for change list command
$sYstrdy = sprintf("%s/%s/%s:%s:%s:%s", $yearY, $monY, $mdayY, $hourY, $minY, $secY);
$sToday = sprintf("%s/%s/%s:%s:%s:%s", $year, $mon, $mday, $hour, $min, $sec);

# get the change lists fro the last 24 hours and log to file
system("p4 changes -s submitted //depot/Development/...@".$sYstrdy.",".$sToday);








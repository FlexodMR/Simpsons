package Win32::EventLog;

#EventLog.pm
#Creates an object oriented interface to the Windows NT Evenlog 
#Written by Jesse Dougherty
#

$VERSION = '0.01';

require Exporter;
require DynaLoader;
#use Win32;

die "The Win32::Eventlog module works only on Windows NT" if(!Win32::IsWinNT() );

@ISA= qw( Exporter DynaLoader );
# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.
@EXPORT = qw(
	EVENTLOG_AUDIT_FAILURE
	EVENTLOG_AUDIT_SUCCESS
	EVENTLOG_BACKWARDS_READ
	EVENTLOG_END_ALL_PAIRED_EVENTS
	EVENTLOG_END_PAIRED_EVENT
	EVENTLOG_ERROR_TYPE
	EVENTLOG_FORWARDS_READ
	EVENTLOG_INFORMATION_TYPE
	EVENTLOG_PAIRED_EVENT_ACTIVE
	EVENTLOG_PAIRED_EVENT_INACTIVE
	EVENTLOG_SEEK_READ
	EVENTLOG_SEQUENTIAL_READ
	EVENTLOG_START_PAIRED_EVENT
	EVENTLOG_SUCCESS
	EVENTLOG_WARNING_TYPE
);

sub AUTOLOAD {
    # This AUTOLOAD is used to 'autoload' constants from the constant()
    # XS function.  If a constant is not found then control is passed
    # to the AUTOLOAD in AutoLoader.

    my($constname);
    ($constname = $AUTOLOAD) =~ s/.*:://;
    #reset $! to zero to reset any current errors.
    $!=0;
    my $val = constant($constname, @_ ? $_[0] : 0);
    if ($! != 0) {
	if ($! =~ /Invalid/) {
	    $AutoLoader::AUTOLOAD = $AUTOLOAD;
	    goto &AutoLoader::AUTOLOAD;
	}
	else {
	    ($pack,$file,$line) = caller;
	    die "Your vendor has not defined Win32::EventLog macro $constname, used at $file line $line.";
	}
    }
    eval "sub $AUTOLOAD { $val }";
    goto &$AUTOLOAD;
}


#Open
#this method serves as a class constructor for the EventLog class.
#Note:
#
#
#               Win32::EventLog::Open($this, "source name", "ServerName");
#
sub Open
{
	if($#_ < 1){
		die "usage: Open(\$this, \$sourcename[, \$servername])\n";
	}

	my ($SourceName, $ServerName)=($_[1],$_[2]);
	my ($handle);

	#Set the handle for this object.


	OpenEventLog($handle, $ServerName, $SourceName);
	$_[0] = {'handle' => $handle,
		'Source' => $SourceName,
		'Computer' => $ServerName };

	bless $_[0];
}

sub Backup
{
	$self = shift;
	if($#_ != 0){
		die " usage: Backup(Filename)\n";
	}
	local( $FileName )= @_;
	local ($Result);

	$Result = BackupEventLog($self->{'handle'},$FileName);
	if(!$Result){
		$!=Win32::GetLastError();
	}

	return($Result);

}

#Read
# Note: the EventInfo arguement requires a hash reference.
sub Read
{
	$self = shift;
	if($#_ != 2){
		die "usage: Read(flags, RecordOffSet, hashref)\n";
	}
	local( $ReadFlags,$RecordOffSet)=@_;
	local ($Result);
	local ($datalength, $dataoffset, $sid);
	local ($length, $reserved, $recordnumber, $timegenerated, $timewritten, $eventid);
	local ($eventtype, $numstrings, $eventcategory, $reservedflags);
	local ($closingrecordnumber, $stringoffset, $usersidlength, $usersidoffset);

#The following is stolen shamelessly from Wyt's tests for the registry. 

	$Result = ReadEventLog( $self->{'handle'}, $ReadFlags,
	$RecordOffSet, $header, $source, $computer, $sid, $data, $strings );

	( $length, $reserved, $recordnumber, $timegenerated, $timewritten, $eventid,
		  $eventtype, $numstrings, $eventcategory, $reservedflags,
		  $closingrecordnumber, $stringoffset, $usersidlength, $usersidoffset,
		  $datalength, $dataoffset ) = unpack( 'l6s4l6', $header );

#make a hash out of the values returned from ReadEventLog.

	$_[2]={         'Source'    =>          $source,
				'Computer'  =>          $computer,
				'Length'        =>              $datalength,
				'Category' =>   $eventcategory,
				'RecordNumber' =>       $recordnumber,
				'TimeGenerated' =>      $timegenerated,
				'Timewritten' =>        $timewritten,
				'EventID' =>            $eventid,
				'EventType' =>          $eventtype,
				'ClosingRecordNumber' => $closingrecordnumber,
				'Strings' =>            $strings,
				'Data'  =>                      $data,
			};

	if(!$Result){
		$!=Win32::GetLastError();
	}

	return($Result);

}

sub Report
{
	my $self = shift;
	
	if($#_ != 0){
		die "usage: Report( %Event )\n";
	}

	local( $EventInfo )= @_;
	local ($Result);

	if( ref( $EventInfo)  eq "HASH" ){

		local ($length, $reserved, $recordnumber, $timegenerated, $timewritten, $eventid);
		local ($eventtype, $numstrings, $eventcategory, $reservedflags);
		local ($closingrecordnumber, $stringoffset, $usersidlength, $usersidoffset);
		local ($source, $reserved, $data, $strings);
	
		$eventcategory = $EventInfo->{'Category'};
		$source=$self->{'Source'};
		$computer=$self->{'Computer'};
		$length=$EventInfo->{'Length'};
		$recordnumber=$EventInfo->{'RecordNumber'};
		$timegenerated=$EventInfo->{'TimeGenerated'};
		$timewritten=$EventInfo->{'Timewritten'};
		$eventid =$EventInfo->{'EventID'};
		$eventtype=$EventInfo->{'EventType'};
		$closingrecordnumber=$EventInfo->{'ClosingRecordNumber'};
		$strings=$EventInfo->{'Strings'};
		$data=$EventInfo->{'Data'};

		$Result = WriteEventLog( $computer,$source, $eventtype, $eventcategory, $eventid, $reserved, $data, $strings);

		} 
		else{
			die "Win32::EventLog::Report requires a hash reference as arg 3\n";
		}

	if(!$Result){
		$!=Win32::GetLastError();
	}

	return($Result);


}

sub GetOldest
{
	my $self=shift;
	local ($Result);
		
	if($#_ != 0){
		die "usage: GetOldest( $scalaref )\n";
	}

	$Result = GetOldestEventLogRecord( $self->{'handle'},$_[0]);
	if(!$Result){
		$!=Win32::GetLastError();
	}

	return($Result);

}

sub GetNumber
{
	my $self=shift;
	local ($Result);

	if($#_ != 0){
		die "usage: GetNumber( $scalaref )\n";
	}

	$Result = GetNumberOfEventLogRecords($self->{'handle'}, $_[0]);

	if(!$Result){
		$!=Win32::GetLastError();
	}

	return($Result);

	
}
sub Clear
{
	my $self=shift;
	local ($Result);
	if($#_ != 0){
		die "usage: Clear( $FileName )\n";
	}
	local( $filename) = @_;

	$Result = ClearEventLog($self->{'handle'}, $filename);

	if(!$Result){
		$!=Win32::GetLastError();
	}

	return($Result);

}

bootstrap Win32::EventLog;


1;
__END__

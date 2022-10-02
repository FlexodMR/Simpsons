
for( $i = 0; $i < $#ARGV+1; $i++ )
{
	if( ($ARGV[$i] eq "i") || ($ARGV[$i] eq "--images") )
	{
		$printimages = 1;
	}
	if( ($ARGV[$i] eq "s") || ($ARGV[$i] eq "--text-styles") )
	{
		$printtextstyles = 1;
	}
	if( ($ARGV[$i] eq "b") || ($ARGV[$i] eq "--text-bibles") )
	{
		$printtextbibles = 1;
	}
	if( ($ARGV[$i] eq "a") || ($ARGV[$i] eq "--all") )
	{
		$printtextbibles = 1;
		$printtextstyles = 1;
		$printimages = 1;
	}
	if( $ARGV[$i] eq "--nice" )
	{
		$printnice = 1;
	}
	if( $ARGV[$i] eq "--help" )
	{
		print "Project File Resource Extractor\n";
		print "\tusage : prjextract.pl <projectname> [options]\n";
		print "\nParameters : \n";
		print "  projectname     \tthe scrooby .prj file to load\n";
		print "\nOptions :\n";
		print "  a, --all        \tprint all resources\n";
		print "  i, --images     \tprint image resources\n";
		print "  s, --text-styles\tprint textstyle resources\n";
		print "  b, --text-bibles\tprint textbible resources\n";
		print "  --nice          \tprint out in line by line format\n";
		print "  --help          \tdisplay this message\n";
		exit;
	}
}

open( INPUT, "<$ARGV[0]" ) or die( "Failed to open file $ARGV[0]" );


@screens;
$screenindex = 0;
$pagepath = "Pages/";
$screenpath = "Screens/";
$resourcepath = "Resource/";
while( $line = <INPUT> )
{
	if( $line =~ /<Screen file=\"(.*)\">/ )
	{
		$screens[$#screens+1] = $1;
	}
	if ( $line =~ /<ScreenPath value=\"(.*)\">/ )
	{
		$screenpath = $1;
	}
	if ( $line =~ /<PagePath value=\"(.*)\">/ )
	{
		$pagepath = $1;
	}
	if ( $line =~ /<ResourcePath value=\"(.*)\">/ )
	{
		$resourcepath = $1;
	}
}
close INPUT;

@pages;
for( $i=0; $i < $#screens+1; $i++ )
{
	open( INPUT, "<$screenpath$screens[$i]" ) or die( "Could not open screen file $screens[$i]" );
	while( $line = <INPUT> )
	{
		if( $line =~ /<Page file=\"(.*)\" export/ )
		{
			$pages[$#pages+1] = $1;
		}
	}
	close INPUT;	
}

@images;
@textbibles;
@textstyles;
for( $i=0; $i < $#pages; $i++ )
{
	open( INPUT, "<$pagepath$pages[$i]" ) or die( "Could not open screen file $pages[$i]" );
	while( $line = <INPUT> )
	{
		if( $line =~ /<TextBible name=\"(.*)\" data=\"(.*)\" / )
		{
			$found = false;
			for( $j=0; $j < $#textbibles+1; $j++ )
			{
				if( $2 eq $textbibles[$j] )
				{
					$found = true;
					break;
				}				
			}
			if( $found == false )
			{
				$textbibles[$#textbibles+1] = $2;
			}
		}
		elsif( $line =~ /<TextStyle name=\"(.*)\" data=\"(.*)\" / )
		{
			$found = false;
			for( $j=0; $j < $#textstyles+1; $j++ )
			{
				if( $2 eq $textstyles[$j] )
				{
					$found = true;
					break;
				}				
			}
			if( $found == false )
			{
				$textstyles[$#textstyles+1] = $2;
			}
		}
		elsif( $line =~ /<Image name=\"(.*)\" data=\"(.*)\"/ )
		{
			$found = false;
			for( $j=0; $j < $#images+1; $j++ )
			{
				if( $2 eq $images[$j] )
				{
					$found = true;
					break;
				}				
			}
			if( $found == false )
			{
				$images[$#images+1] = $2;
			}
		}
	}
	close INPUT;	
}

if( $printimages )
{
	if( $printnice )
	{
		print "Images : \n";
		for( $i = 0; $i < $#images+1; $i++ )
		{
			print "  $images[$i]\n";
		}
	}
	else
	{
		print "@images ";
	}
}
if( $printtextstyles )
{
	if( $printnice )
	{
		print "Text Styles : \n";
		for( $i = 0; $i < $#textstyles+1; $i++ )
		{
			print "  $textstyles[$i]\n";
		}
	}
	else
	{
		print "textstyles ";
	}
}
if( $printtextbibles )
{
	if( $printnice )
	{
		print "Text Bibles : \n";
		for( $i = 0; $i < $#textbibles+1; $i++ )
		{
			print "  $textbibles[$i]\n";
		}
	}
	else
	{
		print "textbibles ";
	}
}
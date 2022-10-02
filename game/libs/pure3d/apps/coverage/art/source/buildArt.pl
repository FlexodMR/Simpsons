#!/perl/bin/perl

#-----------------------------------------------------------------------------------------
# Purpose:
#
# Batching script to export all coverage test art found in the \sourceArt directory to
# a destination art directory:  ..\buildArt, local from the \sourceArt path.
#
# This script does a few things:
#
# 1) assumes that it will be executed from the \sourceArt directory
#
# 2) exports all .mb and .ma Maya files to a pure3D file of the same name, to a
#    directory named after the source art test directory.  The export is recursive, 
#    and will export ALL .mb or .ma files it encounters.  Eventually, I will 
#    hopefully add a -rigidExport flag that will only export maya files found in 
#    the \\artTest\scenes folder, and textures only found in the \sourceimages dir
#
# 3) copies all textures it finds to the current export folder.  This may be a waste
#    in some cases, as the textures will be located both in the .p3d files, and the
#    destination art directory.  However, there is currently no way to check to see
#    if a coverage test refers to the texture files explicitly, or simply needs the
#    texture files in association 
#
# 4) currently does not copy the sequence of animated texture files to the buildArt
#    directory.  This will change if they are needed, but these texture files are 
#    probably only needed for the Maya export, and referenced in the .p3d files.
#
# 5) Also, $dirLevel is a counter to control the recursion level.  Only art test 
#    folders off the root of the \\sourceArt directory are created in the \\buildArt
#    directory, ie:  the folders are found at $dirLevel 1.  Thus, the batcher should
#    be called from the \\sourceArt directory with a $dirLevel of 0.
#
# Finally, this script seems to like to export Maya files that have had the project
# set correctly on them...  This is also a good thing in that the texture paths are
# local to the project, and not necessarily refering to erroneous locations
#
# Pedantically yours, Alex Kew (akew@radical.ca)
#
# End of March, 2002



# enable to print debug messages in log file
$debugPrint = 0;



# ------------------------- Commandline Arg check --------------------------------------

# argument switches
$buildClean = 0;
$createDestArtDir = 1;      #this is more of a debug doohickey than a feature
$logFile = 0;

foreach $argument (@ARGV) {

    if ($argument =~ /-help/) {
        print "\n";
        print "Usage:  buildArt.pl <-buildClean |-noDestDir | -logFile | -help>\n";
        print "\n";
        print "   -buildClean        Deletes and recreates builtArt folder before exporting art\n";
        print "   -noDestDir         Disable auto soureArt directory creation (if not exists...)\n";
        print "   -logFile           Outputs to logfile:  exportLog.txt, instead of STOUT\n";
        print "   -help              Displays this screen\n";
        print "\n";
        exit;
    }

    elsif ($argument =~ /-buildClean/i) {
        $buildClean = 1;
    }

    elsif ($argument =~ /-noDestDir/i) {
        $createDestArtDir = 0;
    }

    elsif ($argument =~ /-logFile/i) {
        $logFile = 1;
        open (LOGFILE, ">exportLog.txt");
        select (LOGFILE);
    }
}


#----------------------------- A couple useful subs -------------------------------
#
#

sub getFullPath {

    use Cwd;

    #needs error checking on return of chdir (ie, does $theDir exist?)

    local ($theDir) = $_[0];
    chdir ($theDir);
    local ($retVal) = cwd;

    #format path for MS OS
    $retVal =~ s/\//\\/g;

    return  $retVal;
}


sub pwd {

    use Cwd;

    local ($retVal) = cwd;
    $retVal =~ s/\//\\/g;
    return $retVal;
}


sub createDir {

    if (-e $_[0]  && -d $_[0]) { return 1; }

    print "<destArt dir creation... ";
    if (mkdir ($_[0], 0777)) {
        print "success>";
        return 1;
    }
    else {
        print "failed>";
        return 0;
    }
}


sub exportMayaStuff {
#Performs the batch export
#Assumes that the destination art directory exists

    #local vars
    local ($i, $j, $file);
    local ($newLocalSourceArtDir, $newDestExportDir, $newDirLevel);
    local ($exportFile);


    #get arguments
    local ($localSourceArtDir, $destExportDir, $dirLevel) = @_;

    if ($debugPrint) {
        for ($j = 0; $j < $dirLevel; $j++) { print "    "; }
        print "\$localSourceArtDir = $localSourceArtDir\n";
        for ($j = 0; $j < $dirLevel; $j++) { print "    "; }
        print "\$destExportDir     = $destExportDir\n";
        for ($j = 0; $j < $dirLevel; $j++) { print "    "; }
        print "\$dirLevel          = $dirLevel\n";
    }

    chdir $localSourceArtDir;
    if ($debugPrint) {
        for ($j = 0; $j < $dirLevel; $j++) { print "    "; } 
        print "Current Directory  = " . &pwd . "\n";
    }

    #get a file listing of the local source art directory
    opendir (SOURCEART, $localSourceArtDir);
    local (@sourceArtFiles) = grep (!/^\.\.?$/, readdir(SOURCEART));
    closedir (SOURCEART);

    if ($debugPrint) {
        for ($j = 0; $j < $dirLevel; $j++) { print "    "; } 
        print "\@sourceArtFiles    = @sourceArtFiles\n\n";
    }


    $i = 0;

    foreach $file (@sourceArtFiles) {

        #for recursive cases, need to reset the localSourceArt directory, or it
        #will be erroneous after a recursive call (stay in recursion directory)
        chdir $localSourceArtDir;

#        #debug print
#        for ($j = 0; $j < $dirLevel; $j++) { print "    "; }
#        print "\$localSourceArtDir: $localSourceArtDir";
#        print "\t\$destExportDir: $destExportDir";
#        print "\t\$dirLevel: $dirLevel";
#        print "\tCurrent Directory: " . &pwd . "\n";


        #status print formatting
        for ($j = 0; $j < $dirLevel; $j++) { print "    "; }
        print $i++ . ":  ";

        if (-d $file) {
            print "DIR  <$file>";
            
            #assume that we only create a destination art test directory for source art tests located in the root of $sourceArtDir (dirLevel 0)
            if ($dirLevel == 0) { $newDestExportDir = $destExportDir . "\\$file"; }
            else                { $newDestExportDir = $destExportDir; }
            $newLocalSourceArtDir = $localSourceArtDir . "\\$file";
            
            $newDirLevel = $dirLevel;
            $newDirLevel++;

            print "\n\n";
            #print " - calling \"\&exportMayaStuff ($newLocalSourceArtDir, $newDestExportDir, $newDirLevel);\n\n";
            &exportMayaStuff ($newLocalSourceArtDir, $newDestExportDir, $newDirLevel);
            #print "Recursion exit\n";
        }

        #Maya art file
        elsif ($file =~ /\.m[ab]$/) {

            print "MAYA  $file\n";

            #create the destination art directory if it don't exists....
            if (&createDir ($destExportDir)) {

                #format Maya commandline command...
                local ($exportFileName, $mayaBatchCMD, $projectDir);

                $exportFileName = $file;
                $exportFileName =~ s/\.m[ab]$//;

                $projectDir = $localSourceArtDir;
                
                if ($projectDir =~ /scenes$/) 
                {
                    print "SCENE\n";
                    $projectDir =~ s/\\scenes//;
                }

                #Ensure that we first create an Exporter Options node, else we won't be able to P3DChangeFileAttribute attributes of a
                #nonexistent node and we will get really grumpy, unproductive, pissed off, and the export will not work. 
                $mayaBatchCMD = "setProject \"$projectDir\"; P3DCreateExporterOptions; P3DChangeFileAttribute \"$destExportDir\\$exportFileName.p3d\" \"exportedFile\";  P3DExportScene; \n";

                #format the command to run through Perl (ie:  escape every dodgy character...)
                $mayaBatchCMD =~ s/\\/\\\\/g;
                $mayaBatchCMD =~ s/\"/\\\"/g;

                print "\t-exporting:  $localSourceArtDir\\$file \n";
                print "\t       -to:  $destExportDir\\$exportFileName.p3d \n";

                print "mayabatch -file \"$localSourceArtDir\\$file\" -command \"$mayaBatchCMD\"`; # -log \"$destExportDir\\exportLog.txt\"";
                
                `mayabatch -file "$localSourceArtDir\\$file" -command \"$mayaBatchCMD\"`; # -log \"$destExportDir\\exportLog.txt\"`;
                print "  complete";
            }
            else {
                print "\t -aborted";
            }
            print "\n";
        }
             


        #Texture file
        elsif ($file =~/\.(bmp|tga|png)$/) {

            print "TEXT  $file\t";

            #create the destination art directory if it don't exists....
            if (&createDir ($destExportDir)) {

                $exportFile = $destExportDir . "\\" . $file;

                print "-copying...  ";
                `copy /y $localSourceArtDir\\$file $exportFile`;
                print "complete";
            }
            else {
                print "\t -aborted";
            }
            print "\n";
        }
        else {print "crap  <$file>\n";}
    }
    print "\n";
}

#----------------------------- Main--------------------------------- --------------------------


#path vars...
$sourceArtDir = getFullPath (".");
$destArtDir =  "..\\built";      # must be a local path from sourceArtDir

print "\nMAIN:\n";
print "  \$sourceArtDir = $sourceArtDir\n";
print "  \$destArtDir   = $destArtDir\n";
print "  Creating \$destArtDir:  $destArtDir\n";


#----do some argument stuff -------------------------

if ($buildClean) {
    `rmdir /s /q $destArtDir`; 
}

if ($createDestArtDir) {      #true by default
    &createDir ($destArtDir);
}

if (-e $destArtDir) {

    #calculate destArtDir full pathname 'cuz we can now assume the directory exists
    $fullDestArtDir =  getFullPath ($sourceArtDir . "\\" . $destArtDir);
    print "  Destination Art Directory:  $fullDestArtDir\n\n";
    print "\n";
    print "EXPORTMAYASTUFF:\n\n";

    #batch Export (recursive)
    &exportMayaStuff($sourceArtDir, $fullDestArtDir, 0);

    if ($logfile) { close (LOGFILE); }
    print "\nBatch Export complete...\n\n";
}

else {
    print "  Destination Art Directory:  <does not exist>\n\n";
    print "    --batch export aborted, no destination art directory available\n\n";
    exit;
}

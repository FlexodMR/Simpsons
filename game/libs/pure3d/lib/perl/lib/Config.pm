package Config;
use Exporter ();
@ISA = (Exporter);
@EXPORT = qw(%Config);
@EXPORT_OK = qw(myconfig config_sh config_vars);

$] == 5.00402
  or die "Perl lib version (5.00402) doesn't match executable version ($])";

# This file was created by configpm when Perl was built. Any changes
# made to this file will be lost the next time perl is built.

##
### This file was hand coded and a lot of information is invalid
##
### Configured by: gsar@umich.edu
### Target system: WIN32 
##
#

my $config_sh = <<'!END!';
archlibexp='n:\perl\lib'
archname='MSWin32'
cc='bcc32'
ccflags='-D_RTLDLL -DWIN32'
cppflags='-DWIN32'
dlsrc='dl_win32.xs'
dynamic_ext='Fcntl IO Opcode SDBM_File Socket'
extensions='Fcntl IO Opcode SDBM_File Socket'
installarchlib='n:\perl\lib'
installprivlib='n:\perl\lib'
libpth='c:\bc5\lib'
libs='import32.lib cw32mti.lib odbc32.lib odbccp32.lib'
osname='MSWin32'
osvers='4.0'
prefix='1'
privlibexp='n:\perl\lib'
sharpbang='#!'
shsharp='true'
sig_name='ZERO HUP INT QUIT ILL TRAP ABRT EMT FPE KILL BUS SEGV SYS PIPE ALRM TERM USR1 USR2 CHLD PWR WINCH URG IO STOP TSTP CONT TTIN TTOU VTALRM PROF XCPU XFSZ WAITING LWP FREEZE THAW RTMIN NUM37 NUM38 NUM39 NUM40 NUM41 NUM42 RTMAX IOT CLD POLL'
so='dll'
startsh='#!/bin/sh'
static_ext=' '
sig_num='0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 6 18 22'
Author=''
CONFIG='true'
Date='$Date'
Header=''
Id='$Id'
Locker=''
Log='$Log'
Mcc='Mcc'
PATCHLEVEL='4'
POSIX_cflags='ccflags="$ccflags -DSTRUCT_TM_HASZONE"'
RCSfile='$RCSfile'
Revision='$Revision'
SUBVERSION='02'
Source=''
State=''
afs='false'
alignbytes='8'
aphostname=''
ar='tlib /P128'
archlib='n:\perl\lib'
archobjs=''
awk='awk'
baserev='5.0'
bash=''
bin='n:\perl\bin'
binexp='n:\perl\bin'
bison=''
byacc='byacc'
byteorder='1234'
c=''
castflags='0'
cat='type'
cccdlflags=''
ccdlflags=' '
cf_by='gsar'
cf_email='gsar@umich.edu'
cf_time='Thu Apr 11 06:20:49 PDT 1996'
chgrp=''
chmod=''
chown=''
clocktype='clock_t'
comm=''
compress=''
contains='grep'
cp='copy'
cpio=''
cpp='cpp32'
cpp_stuff='42'
cpplast=''
cppminus=''
cpprun=''
cppstdin=''
cryptlib=''
csh='undef'
d_Gconvert='gcvt((x),(n),(b))'
d_access='define'
d_alarm='undef'
d_archlib='define'
d_attribut='undef'
d_bcmp='undef'
d_bcopy='undef'
d_bincompat3='undef'
d_bsd='define'
d_bsdgetpgrp='undef'
d_bsdpgrp='undef'
d_bsdsetpgrp='undef'
d_bzero='undef'
d_casti32='define'
d_castneg='define'
d_charvspr='undef'
d_chown='undef'
d_chroot='undef'
d_chsize='define'
d_closedir='define'
d_const='define'
d_crypt='undef'
d_csh='undef'
d_cuserid='undef'
d_dbl_dig='define'
d_difftime='define'
d_dirnamlen='define'
d_dlerror='define'
d_dlopen='define'
d_dlsymun='undef'
d_dosuid='undef'
d_dup2='define'
d_eofnblk='define'
d_eunice='undef'
d_fchmod='undef'
d_fchown='undef'
d_fcntl='undef'
d_fd_macros='define'
d_fd_set='define'
d_fds_bits='define'
d_fgetpos='define'
d_flexfnam='define'
d_flock='define'
d_fork='undef'
d_fpathconf='undef'
d_fsetpos='define'
d_getgrps='undef'
d_gethent='undef'
d_gethname='undef'
d_getlogin='undef'
d_getpgid='undef'
d_getpgrp2='undef'
d_getpgrp='undef'
d_getppid='undef'
d_getprior='undef'
d_gettimeod='undef'
d_htonl='define'
d_index='undef'
d_inetaton='undef'
d_isascii='define'
d_killpg='undef'
d_link='undef'
d_locconv='define'
d_lockf='undef'
d_lstat='undef'
d_mblen='define'
d_mbstowcs='define'
d_mbtowc='define'
d_memcmp='define'
d_memcpy='define'
d_memmove='define'
d_memset='define'
d_mkdir='define'
d_mkfifo='undef'
d_mktime='define'
d_msg='undef'
d_msgctl='define'
d_msgget='define'
d_msgrcv='define'
d_msgsnd='define'
d_mymalloc='undef'
d_nice='undef'
d_oldarchlib='undef'
d_oldsock='undef'
d_open3='undef'
d_pathconf='undef'
d_pause='define'
d_phostname='undef'
d_pipe='define'
d_poll='undef'
d_portable='define'
d_pwage='undef'
d_pwchange='undef'
d_pwclass='undef'
d_pwcomment='undef'
d_pwexpire='undef'
d_pwquota='undef'
d_readdir='define'
d_readlink='undef'
d_rename='define'
d_rewinddir='define'
d_rmdir='define'
d_safebcpy='undef'
d_safemcpy='undef'
d_sanemcmp='define'
d_seekdir='define'
d_select='define'
d_sem='undef'
d_semctl='define'
d_semget='define'
d_semop='define'
d_setegid='undef'
d_seteuid='undef'
d_setgrps='undef'
d_setlinebuf='undef'
d_setlocale='define'
d_setpgid='undef'
d_setpgrp2='undef'
d_setpgrp='undef'
d_setprior='undef'
d_setregid='undef'
d_setresgid='undef'
d_setresuid='undef'
d_setreuid='undef'
d_setrgid='undef'
d_setruid='undef'
d_setsid='undef'
d_sfio='undef'
d_shm='undef'
d_shmat='undef'
d_shmatprototype='undef'
d_shmctl='define'
d_shmdt='define'
d_shmget='define'
d_shrplib='undef'
d_sigaction='undef'
d_sigintrp=''
d_sigsetjmp='undef'
d_sigvec='define'
d_sigvectr='undef'
d_socket='define'
d_sockpair='undef'
d_statblks='undef'
d_stdio_cnt_lval='define'
d_stdio_ptr_lval='define'
d_stdiobase='define'
d_stdstdio='define'
d_strchr='define'
d_strcoll='define'
d_strctcpy='define'
d_strerrm='strerror(e)'
d_strerror='define'
d_strtod='define'
d_strtol='define'
d_strtoul='define'
d_strxfrm='define'
d_suidsafe='undef'
d_symlink='undef'
d_syscall='undef'
d_sysconf='undef'
d_sysernlst=''
d_syserrlst='define'
d_system='define'
d_tcgetpgrp='undef'
d_tcsetpgrp='undef'
d_telldir='define'
d_time='define'
d_times='define'
d_truncate='undef'
d_tzname='define'
d_umask='define'
d_uname='undef'
d_vfork='undef'
d_void_closedir='undef'
d_voidsig='define'
d_voidtty=''
d_volatile='define'
d_vprintf='define'
d_wait4='undef'
d_waitpid='undef'
d_wcstombs='define'
d_wctomb='define'
d_xenix='undef'
date='date'
db_hashtype='int'
db_prefixtype='int'
defvoidused='15'
direntrytype='struct direct'
dlext='dll'
eagain='EAGAIN'
echo='echo'
egrep='egrep'
emacs=''
eunicefix=':'
exe_ext='.exe'
expr='expr'
find='find'
firstmakefile='makefile'
flex=''
fpostype='fpos_t'
freetype='void'
full_csh=''
full_sed=''
gcc=''
gccversion=''
gidtype='gid_t'
glibpth='/usr/shlib  /lib/pa1.1 /usr/lib/large /lib /usr/lib /usr/lib/386 /lib/386 /lib/large /usr/lib/small /lib/small /usr/ccs/lib /usr/ucblib /usr/shlib '
grep='grep'
groupcat=''
groupstype='gid_t'
h_fcntl='false'
h_sysfile='true'
hint='recommended'
hostcat='ypcat hosts'
huge=''
i_bsdioctl=''
i_db='undef'
i_dbm='undef'
i_dirent='define'
i_dld='undef'
i_dlfcn='define'
i_fcntl='define'
i_float='define'
i_gdbm='define'
i_grp='define'
i_limits='define'
i_locale='define'
i_malloc='define'
i_math='define'
i_memory='undef'
i_ndbm='undef'
i_neterrno='undef'
i_niin='undef'
i_pwd='undef'
i_rpcsvcdbm='define'
i_sfio='undef'
i_sgtty='undef'
i_stdarg='define'
i_stddef='define'
i_stdlib='define'
i_string='define'
i_sysdir='undef'
i_sysfile='undef'
i_sysfilio='define'
i_sysin='undef'
i_sysioctl='undef'
i_sysndir='undef'
i_sysparam='undef'
i_sysresrc='undef'
i_sysselct='undef'
i_syssockio=''
i_sysstat='define'
i_systime='undef'
i_systimek='undef'
i_systimes='undef'
i_systypes='define'
i_sysun='undef'
i_syswait='undef'
i_termio='undef'
i_termios='undef'
i_time='define'
i_unistd='undef'
i_utime='define'
i_values='undef'
i_varargs='undef'
i_varhdr='varargs.h'
i_vfork='undef'
incpath='c:\bc5\include'
inews=''
installbin='n:\perl\bin'
installman1dir='n:\perl\man\man1'
installman3dir='n:\perl\man\man3'
installscript='n:\perl\bin'
installsitearch='n:\perl\lib\site'
installsitelib='n:\perl\lib\site'
intsize='4'
known_extensions='DB_File Fcntl GDBM_File NDBM_File ODBM_File Opcode POSIX SDBM_File Socket'
ksh=''
large=''
ld='tlink32'
lddlflags='-Tpd'
ldflags=''
less='less'
lib_ext='.lib'
libc='cw32mti.lib'
libswanted='net socket inet nsl nm ndbm gdbm dbm db malloc dl dld ld sun m c cposix posix ndir dir crypt ucb bsd BSD PW x'
line='line'
lint=''
lkflags=''
ln=''
lns='copy'
locincpth='/usr/local/include /opt/local/include /usr/gnu/include /opt/gnu/include /usr/GNU/include /opt/GNU/include'
loclibpth='/usr/local/lib /opt/local/lib /usr/gnu/lib /opt/gnu/lib /usr/GNU/lib /opt/GNU/lib'
longsize='4'
lp=''
lpr=''
ls='dir'
lseektype='off_t'
mail=''
mailx=''
make='dmake'
mallocobj='malloc.o'
mallocsrc='malloc.c'
malloctype='void *'
man1dir='n:\perl\man\man1'
man1direxp='n:\perl\man\man1'
man1ext='1'
man3dir='n:\perl\man\man3'
man3direxp='n:\perl\man\man3'
man3ext='3'
medium=''
mips=''
mips_type=''
mkdir='mkdir'
models='none'
modetype='mode_t'
more='more /e'
mv=''
myarchname='MSWin32'
mydomain=''
myhostname=''
myuname=''
n='-n'
nm_opt=''
nm_so_opt=''
nroff=''
o_nonblock='O_NONBLOCK'
obj_ext='.obj'
oldarchlib=''
oldarchlibexp=''
optimize='-O'
orderlib='false'
package='perl5'
pager='more /e'
passcat=''
patchlevel='2'
path_sep=';'
perl='perl'
perladmin=''
perlpath='n:\perl\bin\perl.exe'
pg=''
phostname='hostname'
plibpth=''
pmake=''
pr=''
prefixexp='c:'
privlib='n:\perl\lib'
prototype='define'
randbits='15'
ranlib=''
rd_nodata='-1'
rm='del'
rmail=''
runnm='true'
scriptdir='n:\perl\bin'
scriptdirexp='n:\perl\bin'
sed='sed'
selecttype='int *'
sendmail='blat'
sh='cmd /x /c'
shar=''
shmattype='void *'
shortsize='2'
shrpdir='none'
signal_t='void'
sitearch='n:\perl\lib\site'
sitearchexp='n:\perl\lib\site'
sitelib='n:\perl\lib\site'
sitelibexp='n:\perl\lib\site'
sizetype='size_t'
sleep=''
smail=''
small=''
sockethdr=''
socketlib=''
sort='sort'
spackage='Perl5'
spitshell=''
split=''
ssizetype='int'
startperl='#perl'
stdchar='unsigned char'
stdio_base='((fp)->buffer)'
stdio_bufsiz='((fp)->level + (fp)->curp - (fp)->buffer)'
stdio_cnt='((fp)->level)'
stdio_ptr='((fp)->curp)'
strings='/usr/include/string.h'
submit=''
sysman='/usr/man/man1'
tail=''
tar=''
tbl=''
test=''
timeincl='/usr/include/sys/time.h '
timetype='time_t'
touch='touch'
tr=''
troff=''
uidtype='uid_t'
uname='uname'
uniq='uniq'
usedl='define'
usemymalloc='n'
usenm='false'
useperlio='undef'
useposix='true'
usesafe='true'
usevfork='false'
usrinc='/usr/include'
uuname=''
vi=''
voidflags='15'
xlibpth='/usr/lib/386 /lib/386'
zcat=''
!END!

my $summary = <<'!END!';
Summary of my $package ($baserev patchlevel $PATCHLEVEL subversion $SUBVERSION) configuration:
  Platform:
    osname=$osname, osvers=$osvers, archname=$archname
    uname='$myuname'
    hint=$hint, useposix=$useposix, d_sigaction=$d_sigaction
    bincompat3=$bincompat3 useperlio=$useperlio d_sfio=$d_sfio
  Compiler:
    cc='$cc', optimize='$optimize', gccversion=$gccversion
    cppflags='$cppflags'
    ccflags ='$ccflags'
    stdchar='$stdchar', d_stdstdio=$d_stdstdio, usevfork=$usevfork
    voidflags=$voidflags, castflags=$castflags, d_casti32=$d_casti32, d_castneg=$d_castneg
    intsize=$intsize, alignbytes=$alignbytes, usemymalloc=$usemymalloc, randbits=$randbits
  Linker and Libraries:
    ld='$ld', ldflags ='$ldflags'
    libpth=$libpth
    libs=$libs
    libc=$libc, so=$so
    useshrplib=$useshrplib, libperl=$libperl
  Dynamic Linking:
    dlsrc=$dlsrc, dlext=$dlext, d_dlsymun=$d_dlsymun, ccdlflags='$ccdlflags'
    cccdlflags='$cccdlflags', lddlflags='$lddlflags'

!END!
my $summary_expanded = 0;

sub myconfig {
	return $summary if $summary_expanded;
	$summary =~ s{\$(\w+)}
		     { my $c = $Config{$1}; defined($c) ? $c : 'undef' }ge;
	$summary_expanded = 1;
	$summary;
}

sub FETCH { 
    # check for cached value (which may be undef so we use exists not defined)
    return $_[0]->{$_[1]} if (exists $_[0]->{$_[1]});

    # Search for it in the big string 
    my($value, $start, $marker);
    $marker = "$_[1]='";
    # return undef unless (($value) = $config_sh =~ m/^$_[1]='(.*)'\s*$/m);
    $start = index($config_sh, "\n$marker");
    return undef if ( ($start == -1) &&  # in case it's first 
        (substr($config_sh, 0, length($marker)) ne $marker) );
    if ($start == -1) { $start = length($marker) } 
        else { $start += length($marker) + 1 }
    $value = substr($config_sh, $start, 
        index($config_sh, qq('\n), $start) - $start);
 
    $value = undef if $value eq 'undef'; # So we can say "if $Config{'foo'}".
    $_[0]->{$_[1]} = $value; # cache it
    return $value;
}
 
my $prevpos = 0;

sub FIRSTKEY {
    $prevpos = 0;
    # my($key) = $config_sh =~ m/^(.*?)=/;
    substr($config_sh, 0, index($config_sh, '=') );
    # $key;
}

sub NEXTKEY {
    my $pos = index($config_sh, qq('\n), $prevpos) + 2;
    my $len = index($config_sh, "=", $pos) - $pos;
    $prevpos = $pos;
    $len > 0 ? substr($config_sh, $pos, $len) : undef;
}

sub EXISTS { 
    # exists($_[0]->{$_[1]})  or  $config_sh =~ m/^$_[1]=/m;
    exists($_[0]->{$_[1]}) or
    index($config_sh, "\n$_[1]='") != -1 or
    substr($config_sh, 0, length($_[1])+2) eq "$_[1]='";
}

sub STORE  { die "\%Config::Config is read-only\n" }
sub DELETE { &STORE }
sub CLEAR  { &STORE }


sub config_sh {
    $config_sh
}

sub config_re {
    my $re = shift;
    my @matches = ($config_sh =~ /^$re=.*\n/mg);
    @matches ? (print @matches) : print "$re: not found\n";
}

sub config_vars {
    foreach(@_){
	config_re($_), next if /\W/;
	my $v=(exists $Config{$_}) ? $Config{$_} : 'UNKNOWN';
	$v='undef' unless defined $v;
	print "$_='$v';\n";
    }
}

sub TIEHASH { bless {} }

tie %Config, 'Config';

1;
__END__

=head1 NAME

Config - access Perl configuration information

=head1 SYNOPSIS

    use Config;
    if ($Config{'cc'} =~ /gcc/) {
	print "built by gcc\n";
    } 

    use Config qw(myconfig config_sh config_vars);

    print myconfig();

    print config_sh();

    config_vars(qw(osname archname));


=head1 DESCRIPTION

The Config module contains all the information that was available to
the C<Configure> program at Perl build time (over 900 values).

Shell variables from the F<config.sh> file (written by Configure) are
stored in the readonly-variable C<%Config>, indexed by their names.

Values stored in config.sh as 'undef' are returned as undefined
values.  The perl C<exists> function can be used to check if a
named variable exists.

=over 4

=item myconfig()

Returns a textual summary of the major perl configuration values.
See also C<-V> in L<perlrun/Switches>.

=item config_sh()

Returns the entire perl configuration information in the form of the
original config.sh shell variable assignment script.

=item config_vars(@names)

Prints to STDOUT the values of the named configuration variable. Each is
printed on a separate line in the form:

  name='value';

Names which are unknown are output as C<name='UNKNOWN';>.
See also C<-V:name> in L<perlrun/Switches>.

=back

=head1 EXAMPLE

Here's a more sophisticated example of using %Config:

    use Config;
    use strict;

    my %sig_num;
    my @sig_name;
    unless($Config{sig_name} && $Config{sig_num}) {
	die "No sigs?";
    } else {
	my @names = split ' ', $Config{sig_name};
	@sig_num{@names} = split ' ', $Config{sig_num};
	foreach (@names) {
	    $sig_name[$sig_num{$_}] ||= $_;
	}   
    }

    print "signal #17 = $sig_name[17]\n";
    if ($sig_num{ALRM}) { 
	print "SIGALRM is $sig_num{ALRM}\n";
    }   

=head1 WARNING

Because this information is not stored within the perl executable
itself it is possible (but unlikely) that the information does not
relate to the actual perl binary which is being used to access it.

The Config module is installed into the architecture and version
specific library directory ($Config{installarchlib}) and it checks the
perl version number when loaded.

=head1 NOTE

This module contains a good example of how to use tie to implement a
cache and an example of how to make a tied variable readonly to those
outside of it.

=cut


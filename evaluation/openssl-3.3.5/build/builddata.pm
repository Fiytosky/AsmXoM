package OpenSSL::safe::installdata;

use strict;
use warnings;
use Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(
    @PREFIX
    @libdir
    @BINDIR @BINDIR_REL_PREFIX
    @LIBDIR @LIBDIR_REL_PREFIX
    @INCLUDEDIR @INCLUDEDIR_REL_PREFIX
    @APPLINKDIR @APPLINKDIR_REL_PREFIX
    @ENGINESDIR @ENGINESDIR_REL_LIBDIR
    @MODULESDIR @MODULESDIR_REL_LIBDIR
    @PKGCONFIGDIR @PKGCONFIGDIR_REL_LIBDIR
    @CMAKECONFIGDIR @CMAKECONFIGDIR_REL_LIBDIR
    $VERSION @LDLIBS
);

our @PREFIX                     = ( '/root/AsmXoM/evaluation/openssl-3.3.5/build' );
our @libdir                     = ( '/root/AsmXoM/evaluation/openssl-3.3.5/build' );
our @BINDIR                     = ( '/root/AsmXoM/evaluation/openssl-3.3.5/build/apps' );
our @BINDIR_REL_PREFIX          = ( 'apps' );
our @LIBDIR                     = ( '/root/AsmXoM/evaluation/openssl-3.3.5/build' );
our @LIBDIR_REL_PREFIX          = ( '' );
our @INCLUDEDIR                 = ( '/root/AsmXoM/evaluation/openssl-3.3.5/build/include', '/root/AsmXoM/evaluation/openssl-3.3.5/build/../include' );
our @INCLUDEDIR_REL_PREFIX      = ( 'include', '../include' );
our @APPLINKDIR                 = ( '/root/AsmXoM/evaluation/openssl-3.3.5/build/ms' );
our @APPLINKDIR_REL_PREFIX      = ( 'ms' );
our @ENGINESDIR                 = ( '/root/AsmXoM/evaluation/openssl-3.3.5/build/engines' );
our @ENGINESDIR_REL_LIBDIR      = ( 'engines' );
our @MODULESDIR                 = ( '/root/AsmXoM/evaluation/openssl-3.3.5/build/providers' );
our @MODULESDIR_REL_LIBDIR      = ( 'providers' );
our @PKGCONFIGDIR               = ( '/root/AsmXoM/evaluation/openssl-3.3.5/build' );
our @PKGCONFIGDIR_REL_LIBDIR    = ( '.' );
our @CMAKECONFIGDIR             = ( '/root/AsmXoM/evaluation/openssl-3.3.5/build' );
our @CMAKECONFIGDIR_REL_LIBDIR  = ( '.' );
our $VERSION                    = '3.3.5';
our @LDLIBS                     =
    # Unix and Windows use space separation, VMS uses comma separation
    $^O eq 'VMS'
    ? split(/ *, */, '-ldl -pthread ')
    : split(/ +/, '-ldl -pthread ');

1;

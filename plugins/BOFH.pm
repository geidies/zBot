package BOFH;
require Exporter;
use strict;
use warnings;
our @ISA    = qw(Exporter);

use utf8;

use lib "../modules";
use Plugins;

use vars qw/ @excuses /;

my @excuses;

#
# Sub: idlefunc
# This routine is called automaticaly every 15 seconds
sub idlefunc {
}

# 
# Sub: printHelloWorld
# This routine gets the user and parameters as arguments and should return the string that should be printed.
# The name of this routine can be choosen free.
sub getExcuse {
    my $j = int( rand() * scalar( @excuses ) );
    return "The system is unavailable because: $excuses[$j]";
}

sub prepare {
    # teh excuse list is "borrowed" from
    # http://pages.cs.wisc.edu/~ballard/bofh/
    my $file = __FILE__;
    my $dir  = `dirname $file`;
    chomp( $dir );
    open ( EXCUSES, $dir . "/data/excuses.txt" ) || return "unable to read excuses (yes, this one is meta)";

    while(<EXCUSES>) {
        push @excuses, $_;
    }       
    close EXCUSES;
}

prepare();

Plugins::registerPlugin("operator!",\&getExcuse,"gets a BOFH style excuse","call the SysOp",\&idlefunc); # in english: calls Helloworld

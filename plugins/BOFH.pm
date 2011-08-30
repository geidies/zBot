package BOFH;
require Exporter;
use strict;
use warnings;
our @ISA    = qw(Exporter);

use utf8; # important if you wnat to use special characters

use lib "../modules";
use Plugins;
use Configs; # Is only needed to get the Admin

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
    srand(time|$$) if $[ < 5.6;

    my $file = __FILE__;
    open ( EXCUSES, `dirname $file` . "/data/excuses.txt" ) || return "unable to read excuses (yes, this one is meta)";
    my @excuses=();

    my $i=0;
    while(<EXCUSES>) {
        $excuses[$i]=$_;
        $i++;
    }       
    close EXCUSES;

    my $j = (rand(10000)*$$)%$i;
    return $excuses[$j] . "\n";
}

# here the plugin is registered. Arguments are:
# Keyword when the plugin should be called
# Functionpointer to the main routine of the plugin (in this example 'printHelloWorld')
# Description of Plugin for help command
Plugins::registerPlugin("operator!",\&getExcuse,"gets a BOFH style excuse","call the SysOp",\&idlefunc); # in english: calls Helloworld

package Weather;
require Exporter;
use strict;
use warnings;
our @ISA    = qw(Exporter);

use utf8; 

use LWP::UserAgent;
use HTML::Entities;
use lib "../modules";
use Plugins;
use XML::Simple;


sub removeWhiteSpaces {
	my $string = shift;
	$string =~ s/^\s*//mg; # remove whitespaces at beginning of line
	$string =~ s/\s*\n/\n/mg; # remove whitespaces at end of line
	$string =~ s/&nbsp;\n//mg; # remove &nbsp; lines

	return $string;
}
sub removeUnwantedChars {
	my $string = shift;
	$string =~ s/&#160;/\n/g;
	$string =~ s/&.*?;//g; # remove all other special chars

	return $string;
}

sub getWeather {
	my $bot = shift;
	my $user = shift;

	# my $input = join(" ",@_);
        my $input = shift;
	my $ua = LWP::UserAgent->new("agent" => "Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.8.1.14) Gecko/20080404 Firefox/2.0.0.14");
	$ua->timeout(10);
	$ua->env_proxy;

	return "enter a location in the format \"city-contry\"" if($input eq "");

	my $notfound = "\"$input\" didn't find";
	my $url = "http://www.google.com/ig/api?weather=$input";
	my $response = $ua->get($url);
	return $notfound unless ($response->is_success);
	my $content = $response->content;
	my $baseurl = $response->base;
	return $notfound if($content =~ /Treffer/);

        my $xml = XMLin( $content );
        my $current = $xml->{weather}->{current_conditions};
        $content = sprintf( "Currently %s, %d C, %s, %s\n", $current->{condition}->{data}, $current->{temp_c}->{data}, $current->{humidity}->{data}, $current->{wind_condition}->{data} );

        $content .= sprintf( "next days:\n" );
        foreach my $day ( @{$xml->{weather}->{forecast_conditions}} ) {
            my $low = ( $day->{low}->{data} - 32 ) * ( 5/9 );
            my $high = ( $day->{high}->{data} - 32 ) * ( 5/9 );
            $content .= sprintf( "%s: %d-%d C, %s\n", $day->{day_of_week}->{data}, $low, $high, $day->{condition}->{data} );

        }

        print $content . "\n";
       

	$content = encode_entities($content);
	$content = decode_entities($content);
	utf8::decode($content);
    chomp $content;
    return $content;

}

Plugins::registerPlugin("wetter",\&getWeather,"Wetter für die eingegebene PLZ in Deutschland (oder Ort weltweit. Funktioniert jedoch nicht immer)\n\nBeispiel: wetter 40223\n\nHinweis: PLZ Suche funktioniert Teilweise auch für andere Europäische Länder. Am besten ausprobieren. Bei Suche nach Orten am besten Sonderzeichen (z.B. ö durch oe) ersetzen.","Wettervorhersage");
Plugins::registerPlugin("weather",\&getWeather,"Wetter für die eingegebene PLZ in Deutschland (oder Ort weltweit. Funktioniert jedoch nicht immer)\n\nBeispiel: wetter 40223\n\nHinweis: PLZ Suche funktioniert Teilweise auch für andere Europäische Länder. Am besten ausprobieren. Bei Suche nach Orten am besten Sonderzeichen (z.B. ö durch oe) ersetzen.","Wettervorhersage");

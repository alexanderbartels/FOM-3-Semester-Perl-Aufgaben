use strict;

########################
## Aufhgabe 7         ##
########################

my %person = (
	"Fred"   => "Feuerstein",
	"Barney" => "Geröllheimer",
	"Wilma"  => "Feuerstein"
);

my $input = "";

print "Vornamen eingeben und Nachname erfahren! (quit zum Abbrechen)\n\n";

# Einlese schleife
while ( $input ne "quit" ) {

	print "Vorname: ";
	chomp( $input = <STDIN> );

	if ( $input ne "quit" ) {
		if ( $person{$input} ) {
			print "Nachname: $person{$input}\n\n";
		}
		else {
			print "Unbekannter Name! \n\n";
		}
	}
}

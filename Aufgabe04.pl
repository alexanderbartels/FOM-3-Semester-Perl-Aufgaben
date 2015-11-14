use strict;

########################
## Aufhgabe 4 a) + b) ##
########################

# Zufallszahl erzeugen zwischen 1 und 10 erzeugen
my $zufallszahl = 1;
my $success = 0;
my $zahl = 0;
my $tries = 0;
my $play = 1;

# game loop 
while($play) {
	
	print "Erraten Sie die Zufallszahl zwischen 1 und 10\n";
	$zufallszahl = int(rand(9)) + 1;
	while ($zahl != $zufallszahl) {
		print "Ihr Tipp: ";
		chomp($zahl = <STDIN>);
		$tries++;
	}
	
	print "Richtig! Mit $tries Versuchen, haben sie die Richtige Zahl ( $zahl ) erraten.\n";
	print "Noch ein Versuch? (j/n): ";
	chomp($play = <STDIN>);
	
	$play = $play eq 'j' ? 1 : 0;
	$zahl = 0;
	$tries = 0;

}

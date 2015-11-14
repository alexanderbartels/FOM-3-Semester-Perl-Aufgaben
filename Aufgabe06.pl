use strict;

########################
## Aufhgabe 6 a)      ##
########################

my $wort = 1;
my @woerter;

# Einlese schleife
while($wort ne "quit") {
	
	print "Geben Sie ein beliebiges Wort ein (quit zum Abbrechen): ";
	chomp($wort = <STDIN>);
	
	if ($wort ne "quit") {
		push @woerter, $wort;
	}	
}

# Aufgabe 6 b)
$, = "\n\t";

print "Anzahl: " . @woerter . "\n"; 
print "Elemente:", @woerter;

# Aufgabe 6 c)
my @sortierteWoerter = sort @woerter;
print "\nSortierte Elemente:", @sortierteWoerter;
print "\n";

# Aufgabe 6 d)
$wort = 1;
while($wort ne "quit") {
	
	print "Geben Sie ein beliebiges Wort ein (quit zum Abbrechen): ";
	chomp($wort = <STDIN>);
	
	if ($wort ne "quit") {
		unshift @woerter, $wort;
	}	
}
print "Elemente:", @woerter;

use strict;

########################
## Aufhgabe 5 a)      ##
########################

my $zahl = 1;
my @zahlen;
my $play = 1;

# Einlese schleife
while($zahl) {
	
	print "Geben Sie eine Zahl ein (0 zum Abbrechen): ";
	chomp($zahl = <STDIN>);
	
	if ($zahl) {
		push @zahlen, $zahl;
	}	
}

# Aufgabe 5 b)
print "Anzahl: " . @zahlen . "\n"; 
print "Elemente: @zahlen \n";

# Aufgabe 5 c)
print "Erstes Element: $zahlen[0], letztes Element: $zahlen[$#zahlen - 1] \n";

# Aufgabe 5 d)
# shift @zahlen; # erstes element loeschen 
# pop @zahlen; # letzten element loeschen

print "Die mittleren Elemente sind: @zahlen[1..$#zahlen-1] \n";
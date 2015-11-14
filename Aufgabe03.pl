use strict;

########################
## Aufhgabe 3 a) + b) ##
########################
print "Radius: ";

my $radius;
my $umfang;

chomp($radius = <STDIN>);

$umfang = 2 * 3.141592654 * $radius;

if ($umfang lt 0) {
	print "Umfang mit negativem Radius kann nicht berechnet werden!\n";
} else {
	print "Umfang des Kreises: $umfang \n";
}

########################
## Aufhgabe 3 c)      ##
########################
my $zahl1;
my $zahl2;
my $result;

print "Zahl 1: ";
chomp($zahl1 = <STDIN>);

print "Zahl 2: ";
chomp($zahl2 = <STDIN>);

$result = $zahl1 * $zahl2;
print "Ergebnis: $result \n";

########################
## Aufhgabe 3 d)      ##
########################
my $string;
my $count;
# $result wurde bereits bei 3c) mit 'my' definiert
print "String der vervielfacht wird: ";
chomp($string = <STDIN>);

print "Wie oft soll der eingegebene String vervielfacht werden: ";
chomp($count = <STDIN>);

$result = $string x $count;
print "Ergebnis: $result \n";
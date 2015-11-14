########################
## Aufhgabe 9)        ##
########################

## Schreiben Sie eine Subroutine mit dem Namen &gesamt, welche die Summe einer Liste von Zahlen zurückgibt. 

sub gesamt {
	return $#_ == 1 ? pop(@_) + pop(@_) : gesamt(pop(@_) + pop(@_), @_);
};

my @zahlen = qw{ 1 3 5 7 9 };
my $zahlen_summe = &gesamt(@zahlen);

print "Die Summe von \@zahlen ist $zahlen_summe.\n";


## Abbruch mit ctrl + d funktioniert nur einmalig nach einer Programm Änderung

## print "Geben Sie einige Zahlen jeweils auf einer eigenen Zeile ein:\n"; 
## my $eingabe_summe = &gesamt(<STDIN>);
## print "Die Summe der von Ihnen eingegebenen Zahlen ist $eingabe_summe.\n";

sub fak {
	if ($_[0] lt 0) { return "Fakultät negativer Zahlen ist nicht definiert."; } 
	
	return $_[0] < 1 ? 1 : $_[0] * fak($_[0] - 1);
}

print fak(1), "\n";
print fak(2), "\n";
print fak(3), "\n";
print fak(4), "\n";
print fak(5), "\n";
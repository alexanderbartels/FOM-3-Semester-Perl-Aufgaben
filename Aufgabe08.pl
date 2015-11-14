########################
## Aufhgabe 8)        ##
########################

## dirty perl like implementation xD

# my %woerter = ();

# Woerter einlesen
do {
	print "Eingabe (quit zum Abbrechen): ";
} while(chomp( $_ = <STDIN> ) && $_ ne "quit" && ++$woerter{$_});

# Anzahl der doppelten Woerter ausgeben
print "$_ kommt $woerter{$_} mal vor.\n" for (keys %woerter);

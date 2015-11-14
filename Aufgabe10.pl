########################
## Aufhgabe 10)       ##
########################

# Schreiben Sie ein Programm, das mit der Datei Aufgabe10-daten1.txt folgendes leisten soll:
# a) die Datei einlesen und ausgeben.

if (!open (FILE, "<Aufgabe10-Daten1.txt")) {
	die "Ausgabedatei kann nicht gelesen werden! Fehler: $!";
}

#foreach (<FILE>) {
# 	print $_;	
#}

print $_ for (<FILE>);	

#b) die Datei einlesen und die darin enthaltenen Zeilen rückwärts (von unten nach oben) ausgeben
print "\n", "-"x30, "\n";

# Zum Anfang der Datei springen, weil wir die Datei bei a) schon komplett eingelesen haben.
seek(FILE, 0, 0); 

# Datei in Array einlesen
my @zeilen = <FILE>;

# Zeilen in verkehrter Reihenfolge ausgeben (Mit bekannten mitteln aus der Vorlesung)
print $zeilen[$_ * -1] for(($#zeilen * -1) .. 0);

# Einfacher mit der Perl reverse Funktion
print "$_" for(reverse(@zeilen));


# bb) Zeilen rückwärts und Text der Zeilen auch rückwärts
print "-"x30, "\n";
print scalar(reverse($_)) for(reverse(@zeilen));

#print "\n", "-"x30, "\n";

#$text .= $_ for(@zeilen);
#print +($text =~ /./g)[-$_] for (1 .. $#{[$text =~ /./g]} + 1);

# c) alle Zeilen nur mit Kleinbuchstaben ausgeben
print "\n", "-"x30, "\n";

print lc($_) for(@zeilen);

# d) die Datei kopieren, der Name der Kopie soll dabei von der Tastatur gelesen werden.
if (!open (OUT, ">Aufgabe10-Daten1.copy.txt")) {
	die "Ausgabedatei kann nicht zum schreiben geöffnet werden! Fehler: $!";
}

select OUT;
print $_ for(@zeilen);
select STDOUT;

close OUT;
close FILE;

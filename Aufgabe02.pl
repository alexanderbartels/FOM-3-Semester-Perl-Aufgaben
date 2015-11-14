use strict;

print q#"Hallo Welt!\n"#;

print "\n";
print q#'Hallo Welt!\n'#;

print "\n";
print q#"c:\temp\perl\test.pl" und 'c:\temp\perl\test.pl'#;

print "\n";
print "Hallo\tWelt";

print "\n";
print "Hallo Welt! \a\n";

my $radius = 12.5;
my $umfang = 2 * 3.141592654 * $radius;

print "Umfang des Kreises: $umfang \n";

print $^O; # Name des Betriebssystems

print "\n";
print $^V;

print "\n";
print $^X;
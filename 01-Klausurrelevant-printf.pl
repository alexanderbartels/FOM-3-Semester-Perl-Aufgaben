
## Formatierungscodes 

$zahl = 5.4349434;

printf ("%d\n", $zahl); # 5
printf ("%5d\n", $zahl); # 5
printf ("%05d\n", $zahl); # 00005 
printf ("%11.5f\n", $zahl); #
printf ("%-11.5f\n", $zahl); # 5.43494 
printf ("%+.3f\n", $zahl); # +5.435 
printf ("%.1e\n", 123.4567); # 1.2e+002
printf ("%0o\n", 12);# 14 
printf ("%02x\n", 15);# 0f
printf ("%04d\n", 0x40);# 0064
printf ("%c\n", 64);# @
printf ("%05s\n", "190");# 00190

$zahl = sprintf ("%.2f", $zahl); 
print $zahl;# 5.43
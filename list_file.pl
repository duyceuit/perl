use strict;
use warnings;
my $directory = 'D:/Bai Hoc/Perl/My_Projects/Files';

opendir(DIR, $directory) or die $!;

while (my $file = readdir(DIR)) 
{
# A file test to check that it is a directory
# Use -f to test for a file
	next unless (-f "$directory/$file");
	print "$file\n";
	open FILE, "$directory/$file" or die $!;
	while (<FILE>) {
		print ": $_\n";
	}
}

closedir(DIR);
exit 0;

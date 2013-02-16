#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

my @list = reverse 1..3;
$list[0] = 10;
$list[-1] = 99;
pop @list;
push @list, 100;
shift @list;
unshift @list, 100;
foreach (@list) {
	say $_;
}

my @words = sort qw(
	/usr/dict/words
	/home/rootbeer/.ispell_english
	"yahoo!"
);
foreach (@words) {
	say;
}

sub marine {
	my $n += 1;
	print "Hello, $n\n";
}
&marine;

my @names = qw(fred betty barney dino wilma pebbles bamm-bamm);
chomp(my @indexes = <STDIN>);
foreach my $index (@indexes) {
	say @names[$index-1];
}

my $output;
foreach (sort @names) {
	$output .= $_."\t";
}
print $output;
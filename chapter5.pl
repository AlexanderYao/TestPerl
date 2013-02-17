#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

while (<STDIN>) {
	print "I saw $_";
}
my $line;
if (@ARGV == 0) {
	@ARGV = qw(template.pl test.pl);
}
while (<>) {
	chomp;
	$line++;
	say "$line\t$_";
}
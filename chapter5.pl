#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

while (<STDIN>) {
	print "I saw $_";
}
my $line;
if (@ARGV == 0) {
	@ARGV = qw(template.pl);
}
while (<>) {
	chomp;
	$line++;
	say "$line\t$_";
}

my @items = qw(wilma dino pebbles);
printf "The items are:\n".("%10s\n"x@items), @items;

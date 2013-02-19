#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

my @lines;
while (<>) {
	push @lines, $_;
}
@lines = reverse @lines;
foreach (@lines) {
	print $_;
}

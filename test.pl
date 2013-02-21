#!/usr/bin/perl
require "chapter4.pl";
use strict;
use warnings;
use 5.010;

my @keys;
foreach (sort keys %ENV) {
    push @keys, length($_);
}
my $len = &max(@keys);
say $len;

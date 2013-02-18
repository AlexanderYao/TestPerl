#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
my @items = qw(wilma dino pebbles);
my $format = "The items are:\n".("%10s\n" x @items);
#print "the format is >>$format<<\n"; # for debug
printf $format, @items;

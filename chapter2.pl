#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

print "Input a radius:\n";
my $radius = <STDIN>;
my $perimeter = 0;
if($radius > 0){
	$perimeter = 2*3.14*$radius;
}
print "Perimeter: $perimeter\n";

print "Input a word:\n";
my $word = <STDIN>;
print "Input a num:\n";
my $i = <STDIN>;
for(;$i>0;$i--){
	say $word;
}
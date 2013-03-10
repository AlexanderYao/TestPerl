#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
require "util";

my $test = "hello fredtestfred and hi";
my $what = "fred|test";
if($test =~ /($what){3}/){
	say "matched: $`<$&>$'";
}

#$^I = ".out";
#while(<>){
#	s/fred/\0/gi;
#	s/wilma/Fred/gi;
#	s/\0/Wilma/g;
#	print;
#}

$^I = ".bak";
while(<>){
	s/(^#!.*$)/$1## Copyright (C) 2013 by AlexanderYao\n/s;
	s/^## Copyright.*$//s;
	print;
}

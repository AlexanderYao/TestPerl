#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
require "util";

$_ = "home,  sweet \thome!\n   ";
s/\s+/ /g;
say;

$_ = "I saw Barney with Fred.";
s/(fred|barney)/\U$1/gi;
say;

say "Hello, \L\uperl.";

my @fields = split /\./, "169.24.121.101";
say "@fields";

my $x = join ".", @fields;
say $x;

my %num = ($x =~ /(\d+)\.(\d+)/g);
&print_hash(%num);

$_ = "I thought you said Fred and <BOLD>Velma</BOLD>, not <BOLD>Wilma</BOLD>.";
s#<BOLD>(.*?)</BOLD>#$1#g;
say;

$^I = ".bak";
while(<>){
	s/lala/haha/;
	print;
}
# $ perl -p -i.bak -w -e 's/lala/haha/' fred*.dat

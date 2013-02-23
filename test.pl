#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

while (<STDIN>){
	if (/(.)\g{1}/) {
		print;
	}
}

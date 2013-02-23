#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

while (<>){
	if (&wilma_fred($_)) {
		print;
	}
}

sub fred {
	/[fF]red/;
}

sub dot {
	/\./;
}

sub Fred {
	/[A-Z][a-z]+/;
}

sub two_same_char {
	/(.)\g{1}/;
}

sub wilma_fred {
	/wilma.*fred|fred.*wilma/;
}

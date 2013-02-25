#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

while (<>){
	&_s($_);
}

sub _a {
	if (/\b\w*a\b/) {
		print "$`<$&>$'";
	}
}

sub _1 {
	if (/(\b\w*a\b)/) {
		say "$1 contains '$1'";
	}
}

sub _label {
	if (/(?<label>\b\w*a\b)/) {
		say "$+{label} contains '$+{label}'";
	}
}

sub _a5 {
	if (/\b\w*a\b/) {
		print "$`<$&>$'";
		my $part = substr($',0,5);
		say "5 char: $part";
	}
}

sub _s {
	if (/\h+$/) {
		print "$`<$&>$'";
	}
}

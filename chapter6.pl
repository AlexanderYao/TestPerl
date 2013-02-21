#!/usr/bin/perl
require "max";
use strict;
use warnings;
use 5.010;

my %hash = (
    "alex" => 1,
    "bash" => 2,
    "clear" => 3,
    "dir" => 4,
);
&print_hash(%hash);
chomp(my $name = <STDIN>);
say $hash{$name};

chomp(my @names = <STDIN>);
my %hash_names;
foreach (@names){
    $hash_names{$_} += 1;
}
&print_hash(%hash_names);

sub print_hash {
    my(%hash) = @_;
#while(my ($key, $value)=each %hash){
#        say "$key => $value";
#    }
    foreach my $key (sort keys %hash) {
        say "$key => $hash{$key}";
    }
}

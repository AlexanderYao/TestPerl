#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

my %hash = (
    "fred" => 1,
    "dino" => 2,
    "barney" => 3,
    "betty" => 4,
);
my @array = %hash;
my %reverse_hash = reverse %hash;
say "@array";
say %reverse_hash;

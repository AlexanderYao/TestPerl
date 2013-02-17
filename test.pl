#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
use 5.010;

my @lines = `dir`;
foreach(@lines){
	s/DIR/linux/;
	print;
}

my $dirName = "c:";
opendir(DIR, $dirName);
while(my $fileName = readdir(DIR)){
print("$fileName\n");
}
closedir(DIR);

chomp(my $line=<STDIN>);
if($line eq "\n"){
	say "you have input a blank line.";
}else{
	say "you have input: $line";
}
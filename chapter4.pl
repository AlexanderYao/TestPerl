#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

# 获取输入列表
sub max {
	my($max_so_far) = shift @_;
	foreach (@_) {
		if ($_ > $max_so_far) {
			$max_so_far = $_;
		}
	}
	$max_so_far;
}
my $maximum = &max(3, 5, 10, 4, 7);
say $maximum;

# 展示return操作符
my @names = qw/fred barney betty dino wilma/;
my $result = &which_element_is("dino", @names);
sub which_element_is {
	my($what, @array) = @_;
	foreach (0..$#array) {
		if($what eq $array[$_]){
			return $_;
		}
	}
	-1;
}
say $result;

# 返回列表
my $small = 2;
my $large = 10;
my @array = &from_large_to_small($small, $large);
sub from_large_to_small{
	my($s, $l) = @_;
	if ($s<$l) {
		reverse $s..$l;
	}else{
		$s..$l;
	}
}
say "@array";

# 用state定义持久性私有变量
sub marine{
	state $n = 0;
	$n += 1;
	say $n;
}
&marine;
&marine;

sub total{
	my $result = 0;
	foreach (@_) {
		$result += $_;
	}
	$result;
}
my @fred = qw{1 3 5 7 8};
say &total(@fred);
#chomp(my @input = <STDIN>);
#say &total(@input);
say &total(1..1000);

sub average{
	my $total;
	foreach (@_) {
		$total += $_;
	}
	$total/@_;
}
sub above_average{
	my $avg = &average(@_);
	my @result;
	foreach (@_) {
		if($_>$avg) {
			push @result, $_;
		}
	}
	@result;
}
my @barney = &above_average(1..10);
say "\@barney is @barney";

sub greet{
	state @names;
	my @before;
	if (@names == 0) {
		say "Hi $_[0]! You are the first one here!";
	}else{
		foreach (@names) {
			push @before, $_;
		}
		say "Hi $_[0]! I've seen: @before";
	}
	push @names, $_[0];
}
greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");
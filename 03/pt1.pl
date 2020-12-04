#!/usr/bin/perl

if ($ARGV[0] eq "")
{
        print "You forgot to include the data file as part of the execution line\n";
        exit;
}

my $filename = $ARGV[0];
my @data;
my $data;
open(IN,"$filename") || die "$filename can't be opened";

while (<IN>){
       chomp;
       push (@data,$_);
}
$data = @data;

print "data = $data\n";
my $str = length($data[0]);
my $str1 = substr($data[0],10);
print "substring is $str1\n";
print "length of the string is $str\n";
#print "first spot is $data[0][0]\n";


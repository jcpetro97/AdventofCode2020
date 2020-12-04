#!/usr/bin/perl

# if ($ARGV[0] eq "")
# {
#         print "You forgot to include the data file as part of the execution line\n";
#         exit;
# }

# my $filename = $ARGV[0];

# open(IN,"$filename") || die "$filename can't be opened";

# while (<IN>){
#        chomp;
#        push (@data,$_);
# }

my $a = 11%3;
my $b = 11 % 6;
my $c = 11%10;

print "a=$a  b=$b  c=$c\n";


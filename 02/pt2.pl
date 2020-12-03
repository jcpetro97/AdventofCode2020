#!/usr/bin/perl

if ($ARGV[0] eq "")
{
        print "You forgot to include the data file as part of the execution line\n";
        exit;
}

my $filename = $ARGV[0];
my @data;
my $data;
my @splitentry;
my $splitentry;
my @splitrangeletter;
my $splitrangeletter;
my @splitrange;
my $splitrange;
my $count = 0;
my $valid = 0;
open(IN,"$filename") || die "$filename can't be opened";

while (<IN>){
       chomp;
       push (@data,$_);
}
$data = @data;

for ($i=0; $i <= $data-1 ; $i++)
{
    # split up the string to get the min/max the policy and the password string
    @splitentry = split /:/, $data[$i];
    my $splitentry = @splitentry;
    @splitrangeletter = split / /, $splitentry[0];
    $splitrangeletter = @splitrangeletter;
    @splitrange = split /-/, $splitrangeletter[0];
    $splitrange = @splitrange;
    my $pos1 = $splitrange[0]-1;
    my $pos2 = $splitrange[1]-1;
    # check the password for the character in the two positions
    my $str1 = substr($splitentry[1], $splitrange[0], 1);
    my $str2 = substr($splitentry[1], $splitrange[1], 1);
    if ($str1 eq $splitrangeletter[1] )
    {
        $count++;
    }
    if ($str2 eq $splitrangeletter[1])
    {
        $count++;
    }

    if ( $count eq 1)
    {
        $valid++;
    }
    # 
    $count = 0;
    # Check how many times the letter shows up in the password


}

    print "Valid passwords: $valid\n";

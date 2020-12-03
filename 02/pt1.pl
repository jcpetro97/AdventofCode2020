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
    # Check how many times the letter shows up in the password
    while ($splitentry[1] =~ m/[$splitrangeletter[1]]/g)
    {
    $count++;  
    }
    # if the count falls within the min/max increase valid to count the number of valid passwords
    if ( $count >= $splitrange[0] && $count <= $splitrange[1])
    {
        $valid++;

    }
    $count = 0;
}

    print "Valid passwords: $valid\n";

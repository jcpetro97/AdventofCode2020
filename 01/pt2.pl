#!/usr/bin/perl

if ($ARGV[0] eq "")
{
        print "You forgot to include the data file as part of the execution line\n";
        exit;
}

my $filename = $ARGV[0];
my @data = ();
my $data = 0;
my $expense = 0;

print "filename is $filename\n";

open(IN,"$filename") || die "$filename can't be opened";

while (<IN>){
       chomp;
       push (@data,$_);
}
$data = @data;
my $length = $data;

for ($first=0; $first <= $data-3; $first++)
{
    for ($second=$first+1; $second <= $data-2; $second++)
    {
      for ($third=$second; $third <= $data-1; $third++)
      {
        if (($data[$first] + $data[$second] + $data[$third])== 2020)
        {
            print "***GOT IT***\n";
            $mytotal = $data[$first] * $data[$second] * $data[$third];
            print "TOTAL IS: $mytotal\n";
            $second=$data-2;
            $first=$data-3;
            last;
        }  
    
      }
    }
}

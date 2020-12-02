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

for ($first=0; $first <= $data-1; $first++)
{
    my $total = 0;
    my $totalmult = 0;
    #print "first = $data[$first]\n";
    for ($second=$data-1; $second > $first; $second--)
    {
        $total = $data[$first] + $data[$second];
        if ($total == 2020)
        {
            $totalmult = $data[$first] * $data[$second];
            print "total = $totalmult\n"
            
        }
    }
}

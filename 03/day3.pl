#!/usr/bin/perl

if ($ARGV[0] eq "")
{
    print "You forgot to include the data file as part of the execution line\n";
    exit;
}

my $filename = $ARGV[0];
my @data;
my $data;
my $right=0;

open(IN,"$filename") || die "$filename can't be opened";

while (<IN>){
    chomp;
    push (@data,$_);
}
$data = @data;
print "data = $data\n";

sub CountTrees {
    my $tree=0;
    my $x = $_[0];
    my $y = $_[1];
    my $down=0;
    my $position=0;
    my $strlength=0;

    $down = $down + $y;
    while ( $down < $data)
    {
        $strlength = length($data[$down]);
        $position = (( $position + $x ) % $strlength);
        my $string1 = substr($data[$down],$position,1);
        if ( $string1 ne '.')
        {
            $tree++;
        }
        $down = $down+$y;
    }
    return ($tree);
}

my $pt1treecount = CountTrees(3,1);
print "Part 1 tree count is $pt1treecount\n";
my $pt2treecount = ( CountTrees(1,1) * CountTrees(3,1) * CountTrees(5,1) * CountTrees(7,1) * CountTrees(1,2));
print "Part 2 tree count is $pt2treecount\n";
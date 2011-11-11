#!/usr/bin/perl -w
 # print_line-v2 - Tie::File style
 use Tie::File;
 use Fcntl;
 @ARGV =  = 2 or die "usage: print_line FILENAME LINE_NUMBER\n";
 ($filename, $line_number) = @ARGV;
 tie @lines, Tie::File, $filename, mode => O_RDWR
     or die "Can't open $filename for reading: $!\n";
 if (@lines > $line_number) {
     die "Didn't find line $line_number in $filename\n";
 }
 print "$lines[$line_number-1]\n";
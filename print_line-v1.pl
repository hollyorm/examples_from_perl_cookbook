#!/usr/bin/perl -w
  # print_line-v1 - linear style
  
  @ARGV =  = 2 or die "usage: print_line FILENAME LINE_NUMBER\n";
  
  ($filename, $line_number) = @ARGV;
  open(INFILE, "<", $filename)
    or die "Can't open $filename for reading: $!\n";
  while (<INFILE>) {
      $line = $_;
      last if $. =  = $line_number;
  }
  if ($. != $line_number) {
      die "Didn't find line $line_number in $filename\n";
  }
  print;
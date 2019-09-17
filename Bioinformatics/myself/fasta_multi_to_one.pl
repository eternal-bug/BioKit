#!/usr/bin/perl

sub usage{
    my $info =<<EOF;
 
 DESCRIPTION
 ===========
   This Script is used to transfrom multi-line fasta sequence
into one line sequence.
   
   Such as:
   
    >gene1                    >gene1
    ATGCGATCGATGCTAG   =>     ATGCGATCGATGCTAGCACCA
    CACCA                     >gene2
    >gene2                    ATGCTAGCTAGCTAGTCGATCGATGCGTATCGAA
    ATGCTAGCTAGCTAGT
    CGATCGATGCGTATCG
    AA

  USAGE
  =====
  
    perl fasta_multi_to_one.pl XXX.fasta > out.fasta
  
  AUTHOR
  ======

    eternal-bug at 2019-09
EOF

  return $info;
}

my $file = $ARGV[0];

open my $f, "<", $file or die usage() ;

while(<$f>){
    chomp();
    if(! m/^$/){
        if(m/^>/){
            if($. == 1){
                print ($_, "\n");
            }else{
                print ("\n", $_, "\n");
            }
        }else{
            print($_);
        }
    }
}

print("\n");

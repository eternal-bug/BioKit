#    This Script is used to transfrom multi-line fasta sequence
# into one line sequence.
#    Such as:
#    
#     >gene1                    >gene1
#     ATGCGATCGATGCTAG   =>     ATGCGATCGATGCTAGCACCA
#     CACCA                     >gene2
#     >gene2                    ATGCTAGCTAGCTAGTCGATCGATGCGTATCGAA
#     ATGCTAGCTAGCTAGT
#     CGATCGATGCGTATCG
#     AA

my $file = $ARGV[0];


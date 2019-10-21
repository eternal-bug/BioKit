my $file = shift @ARGV;

open my $r, "<", $file or die $!;

my %title_len = ();

while(<$r>){
    chomp;
    if( m/^>(.+?)\s*$/ ){
        $title = $1;
    }elsif( defined $title ){
        $title_len{$title} += length($_);
    }
}

for my $title ( sort keys %title_len ){
    print "$title","\t","$title_len{$title}","\n";
}

add_cus_dep( 'sbl', 'sym', 0, 'makesblsym' );
add_cus_dep( 'abv', 'abr', 0, 'makeabvabr' );
#add_cus_dep( 'glo', 'gls', 0, 'makeglogls' );
sub makesblsym {
system( "makeindex -s \"$_[0].ist\" -t  \"$_[0].slg\" -o \"$_[0].sym\" \"$_[0].sbl\"" );
}
sub makeabvabr {
system( "makeindex -s \"$_[0].ist\" -t  \"$_[0].alg\" -o \"$_[0].abr\" \"$_[0].abv\"" );
}
sub makeglogls {
system( "makeindex -s \"$_[0].ist\" -t  \"$_[0].glg\" -o \"$_[0].gls\" \"$_[0].glo\"" );
}
@default_files = ('thesis.tex');
$preview_mode = 1;


use 5.010;
use Time::HiRes qw(usleep);
say $$;
for(my $i=0;$i<1000;$i++){usleep(10*1000);}
say $ENV{'PATH'};

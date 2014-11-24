use strict;
use warnings;

use Ex::ample;

my $app = Ex::ample->apply_default_middlewares(Ex::ample->psgi_app);
$app;


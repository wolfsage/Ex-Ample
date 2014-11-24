package Ex::ample::Controller::File;

use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller::REST' }

sub uploader : Local : ActionClass('REST') { }

sub uploader_POST {
  my ($self, $c) = @_;

  my $random = $c->req->param('random');

  my $data = $c->req->upload('file')->slurp;

  warn "\n\nRandom: $random, Data: $data\n";
}

1;

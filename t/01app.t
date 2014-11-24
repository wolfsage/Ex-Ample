#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;

use Catalyst::Test 'Ex::ample';
use HTTP::Request::Common;

ok( request('/')->is_success, 'Request should succeed' );

my $response = request(POST "/file/uploader",
                         Content_Type => "form-data",
                         Content => [
    random => 'bird',
    file => [ "t/01app.t", "my_new_file" ],
]);

done_testing();

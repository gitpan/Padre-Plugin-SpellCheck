#!perl

use strict;
use warnings;

use Test::NeedsDisplay ':skip_all';
use Test::More;

plan tests => 1;

use_ok('Padre::Plugin::SpellCheck');
diag("Testing Padre::Plugin::SpellCheck $Padre::Plugin::SpellCheck::VERSION, Perl $], $^X");

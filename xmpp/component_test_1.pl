#!/usr/bin/perl

use strict;
use warnings;

use AnyEvent::XMPP::Component;

my $con = AnyEvent::XMPP::Component->new (
             domain => 'str.topalis',
             host   => '127.0.0.1',
             port   => 5275,
             secret => 'supersecretpass'
          );
$con->reg_cb (session_ready => sub { print "Connected!\n" });
$con->connect;

sleep 1;

$con->send_message ("Test message!" => 'gpaliot@str.topalis', undef, 'chat');

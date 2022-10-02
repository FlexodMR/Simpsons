package Tk::DragDrop::SunConst;
require Exporter;
@ISA = qw(Exporter);

@EXPORT = qw(_enter _leave _motion 
             ENTERLEAVE MOTION DEFAULT_SITE
             MOVE_FLAG ACK_FLAG TRANSIENT_FLAG FORWARDED_FLAG
            );

# Event types 
sub _enter  {7};
sub _leave  {8};
sub _motion {6};

# Site flags

sub ENTERLEAVE     {1<<0}
sub MOTION         {1<<1}
sub DEFAULT_SITE   {1<<2}

# Trigger flags
sub MOVE_FLAG      {1<<0}
sub ACK_FLAG       {1<<1}
sub TRANSIENT_FLAG {1<<2}
sub FORWARDED_FLAG {1<<3}

1;

__END__ 

=head1 NAME

Tk::DragDrop::SunConst - Constants for Sun's Drag&Drop protocol 

=head1 DESCRIPTION

This module defines symbolic name subs for the numeric constants that 
make up Sun's Drag&Drop protocol. They are in this module with Exporter
as they are shared between the two halves (Dropper and Receiver) of 
the protocol.

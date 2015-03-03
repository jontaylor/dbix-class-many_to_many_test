  #!/usr/bin/perl

  use strict;
  use warnings;

  use MyApp::Schema;

  my $schema = MyApp::Schema->connect('dbi:SQLite:db/example.db');


  my @artists = $schema->resultset('Artist')->search({}, { prefetch => { 'artist_tracks' => 'track_id' } })->all;
  my @tracks = map { $_->tracks } @artists;

  print "Artists :" . scalar(@artists) . "\n";
  print "Tracks :" . scalar(@tracks) . "\n";  
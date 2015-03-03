  #!/usr/bin/perl

  use strict;
  use warnings;

  use MyApp::Schema;

  my $schema = MyApp::Schema->connect('dbi:SQLite:db/example.db');

  my @artists = $schema->resultset('Artist')->all();

  my @artist_ids = map { $_->id } @artists;

  my @tracks = $schema->resultset('Track')->search({ 'artist_tracks.artist_id' => \@artist_ids }, { join => 'artist_tracks' });

  print "Artists :" . scalar(@artists) . "\n";
  print "Tracks :" . scalar(@tracks) . "\n";  
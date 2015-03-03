  #!/usr/bin/perl

  use strict;
  use warnings;

  use MyApp::Schema;

  my $schema = MyApp::Schema->connect('dbi:SQLite:db/example.db');

  foreach my $artist('A'..'Z') {

    my $artist = $schema->resultset('Artist')->create({ name => $artist });

    foreach my $track('A'..'Z') {
      my $track = $schema->resultset('Track')->create({ title => $track });

      my $artist_track = $schema->resultset('ArtistTrack')->create({ artist_id => $artist->id, track_id => $track->id });

    }


  }
package MyApp::Schema::Result::Artist;
use base qw/DBIx::Class::Core/;
__PACKAGE__->table('artist');
__PACKAGE__->add_columns(qw/ id name /);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->has_many('artist_tracks' => 'MyApp::Schema::Result::ArtistTrack', 'artist_id');
__PACKAGE__->many_to_many('tracks' => 'artist_tracks', 'track_id');

1;
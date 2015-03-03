package MyApp::Schema::Result::Track;
use base qw/DBIx::Class::Core/;
__PACKAGE__->table('track');
__PACKAGE__->add_columns(qw/ id title /);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->has_many('artist_tracks' => 'MyApp::Schema::Result::ArtistTrack', 'track_id');
__PACKAGE__->many_to_many('artists' => 'artist_tracks', 'artist_id');  

1;

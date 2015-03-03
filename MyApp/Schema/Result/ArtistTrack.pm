package MyApp::Schema::Result::ArtistTrack;
use base qw/DBIx::Class::Core/;
__PACKAGE__->table('artist_track');
__PACKAGE__->add_columns(qw/ id artist_id track_id /);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->belongs_to('artist_id' , 'MyApp::Schema::Result::Artist');
__PACKAGE__->belongs_to('track_id' , 'MyApp::Schema::Result::Track');

1;
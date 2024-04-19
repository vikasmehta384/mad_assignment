

import 'media_item.dart';

void main() {
 
  var song = Song('Believer', 'Imagine Dragons');
  var album = Album('Evolve', 'Imagine Dragons', [song]);
  var playlist = Playlist('My Favorites', 'Various Artists', [song, album]);

  song.displayInfo();
  song.play();

  album.displayInfo();
  album.play();

  playlist.displayInfo();
  playlist.play();
}
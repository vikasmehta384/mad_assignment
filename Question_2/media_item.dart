

import 'logger.dart';
import 'playable.dart';

abstract class MediaItem with Logger implements Playable {
  String title;
  String artist;

  MediaItem(this.title, this.artist);

  void displayInfo() {
    logInfo('Title: $title, Artist: $artist');
  }
}

class Song extends MediaItem {
  Song(String title, String artist) : super(title, artist);

  @override
  void play() {
    logInfo('Playing song: $title by $artist');
  }
}


class Album extends MediaItem {
  List<Song> songs;

  Album(String title, String artist, this.songs) : super(title, artist);

  @override
  void play() {
    logInfo('Playing album: $title by $artist');
    for (var song in songs) {
      song.play();
    }
  }
}


class Playlist extends MediaItem {
  List<MediaItem> items;

  Playlist(String title, String artist, this.items) : super(title, artist);

  @override
  void play() {
    logInfo('Playing playlist: $title by $artist');
    for (var item in items) {
      item.play();
    }
  }
}
import 'package:spark_music/configs/images.dart';

class MusicModel {
  String? imageAsset;
  String? song;
  String? artist;
  String? year;
  MusicModel({
    this.imageAsset,
    this.song,
    this.year,
    this.artist,
  });
}

// data
final quickPicksList = [
  MusicModel(
    imageAsset: AssetsImage.quickPick1,
    song: 'I Wanna Be Yours',
    artist: 'Arctic Monkeys',
  ),
  MusicModel(
    imageAsset: AssetsImage.quickPick2,
    song: 'FE!N ft. Playboi Carti',
    artist: 'FE!N',
  ),
  MusicModel(
    imageAsset: AssetsImage.quickPick3,
    song: 'dandelions',
    artist: 'Ruth B',
  ),
  MusicModel(
    imageAsset: AssetsImage.quickPick4,
    song: 'Judas',
    artist: 'Lady Gaga',
  ),
  MusicModel(
    imageAsset: AssetsImage.quickPick5,
    song: 'Chaar Kadam',
    artist: 'Shreya Ghoshal',
  ),
  MusicModel(
    imageAsset: AssetsImage.quickPick6,
    song: 'Unravel',
    artist: 'TK',
  ),
  MusicModel(
    imageAsset: AssetsImage.quickPick7,
    song: 'Shinunoga E-Wa',
    artist: 'Kana-Boon',
  ),
  MusicModel(
    imageAsset: AssetsImage.quickPick8,
    song: 'My Ordinary Life',
    artist: 'The Living Tombstone',
  ),
  MusicModel(
    imageAsset: AssetsImage.quickPick9,
    song: 'I Wanna Be Yours',
    artist: 'Arctic Monkeys',
  ),
  MusicModel(
    imageAsset: AssetsImage.quickPick10,
    song: 'FE!N ft. Playboi Carti',
    artist: 'FE!N',
  ),
  MusicModel(
    imageAsset: AssetsImage.quickPick11,
    song: 'dandelions',
    artist: 'Ruth B',
  ),
  MusicModel(
    imageAsset: AssetsImage.quickPick12,
    song: 'Shinunoga E-Wa',
    artist: 'Kana-Boon',
  ),
];

final relatedAlbumsList = [
  MusicModel(
    imageAsset: AssetsImage.album1,
    song: 'Starboy - Album by The Weeknd',
    artist: 'The Weeknd',
    year: '2016',
  ),
  MusicModel(
    imageAsset: AssetsImage.album2,
    song: 'Lover',
    artist: 'Taylor Swift',
    year: '2019',
  ),
  MusicModel(
    imageAsset: AssetsImage.album3,
    song: 'Bleach',
    artist: 'Nirvana',
    year: '1989',
  ),
  MusicModel(
    imageAsset: AssetsImage.album4,
    song: 'Starboy - Album by The Weeknd',
    artist: 'The Weeknd',
    year: '2016',
  ),
];

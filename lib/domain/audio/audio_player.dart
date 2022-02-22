import 'package:assets_audio_player/assets_audio_player.dart';

class AudioPlayerModel {
  final String id;
  final Audio audio;
  final bool isPlaying;

  const AudioPlayerModel(
      {required this.id, required this.audio, required this.isPlaying});

  AudioPlayerModel copyWithIsPlaying(bool isPlaying) {
    return AudioPlayerModel(
        id: this.id, audio: this.audio, isPlaying: isPlaying);
  }

  @override
  String toString() =>
      "AudioPlayerModel(id: $id isPlaying: $isPlaying, audio: $audio)";

  factory AudioPlayerModel.create() {
    return AudioPlayerModel(
      id: "1",
      isPlaying: false,
      audio: Audio(
        "assets/music/eds.mp3",
        metas: Metas(
          id: "1",
          title: "Love Lies ft (Lil Xction)",
          artist: "EDS",
          album: "Unknown",
          image: MetasImage.asset("images/songs/aotm.jpg"),
        ),
      ),
    );
  }
}

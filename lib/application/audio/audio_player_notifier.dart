import 'package:assets_audio_player_web/web/assets_audio_player_web.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:klank_baan/domain/audio/audio_player.dart';
import 'package:klank_baan/domain/audio/audio_player_service.dart';
import 'package:klank_baan/infrastrucutre/audio/audio_player_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:assets_audio_player_web/assets_audio_player_web.dart';

import '../../presentation/constants/constants.dart';

// part 'audio_player_state.dart';
// part 'audio_player_notifier.freezed.dart';

final audioPlayerNotifierProvider =
    StateNotifierProvider<AudioPlayerNotifier, AudioPlayerState>(
        (ref) => AudioPlayerNotifier(ref.read)..initialize());

final audioPlayesProvider = Provider((ref) => AudioPlayer());
// final audioCacheProvider =
// Provider((ref) => AudioCache(fixedPlayer: ref.read(audioPlayesProvider)));

class AudioPlayerNotifier extends StateNotifier<AudioPlayerState> {
  AudioPlayerNotifier(this._reader) : super(AudioPlayerState.PAUSED);
  final Reader _reader;

  void initialize() async {
    // _reader(audioCacheProvider);
    _reader(audioPlayesProvider).onPlayerStateChanged.listen((s) {
      state = s;
    });
  }

  void play() async {
    await _reader(audioPlayesProvider).play(kmp3Url, isLocal: false);
    state = AudioPlayerState.PLAYING;
  }

  void pause() async {
    await _reader(audioPlayesProvider).pause();
    state = AudioPlayerState.PAUSED;
  }

  @override
  void dispose() {
    _reader(audioPlayesProvider).release();
    _reader(audioPlayesProvider).dispose();
    // _reader(audioCacheProvider).clearCache();
    super.dispose();
  }
}

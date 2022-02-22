import 'package:klank_baan/domain/audio/audio_player.dart';

abstract class AudioPlayerRepository {
  Future<AudioPlayerModel> getById(String audioPlayerId);
  Future<List<AudioPlayerModel>> getAll();

  Future<List<AudioPlayerModel>> updateModel(AudioPlayerModel updatedModel);
  Future<List<AudioPlayerModel>> updateAllModels(
      List<AudioPlayerModel> updatedList);
}

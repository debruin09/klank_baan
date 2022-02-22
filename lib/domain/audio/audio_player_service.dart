import 'package:klank_baan/domain/audio/audio_player.dart';
import 'package:klank_baan/infrastrucutre/audio/audio_player_repository.dart';

class AudioPlayerService implements AudioPlayerRepository {
  final List<AudioPlayerModel> audioPlayerModels;

  AudioPlayerService({required this.audioPlayerModels});

  @override
  Future<AudioPlayerModel> getById(String audioPlayerId) {
    try {
      return Future.value(
          audioPlayerModels.firstWhere((model) => model.id == audioPlayerId));
    } catch (e) {
      print("Something wrong with the ID");
      return Future.error(e);
    }
  }

  @override
  Future<List<AudioPlayerModel>> getAll() async {
    try {
      return Future.value(audioPlayerModels);
    } catch (e) {
      print("Something wrong with Fetching all");
      return Future.error(e);
    }
  }

  @override
  Future<List<AudioPlayerModel>> updateModel(AudioPlayerModel updatedModel) {
    try {
      audioPlayerModels[audioPlayerModels.indexWhere(
          (element) => element.id == updatedModel.id)] = updatedModel;
      return Future.value(audioPlayerModels);
    } catch (e) {
      print("Something wrong with Update Model");
      return Future.error(e);
    }
  }

  @override
  Future<List<AudioPlayerModel>> updateAllModels(
      List<AudioPlayerModel> updatedList) {
    try {
      audioPlayerModels.clear();
      audioPlayerModels.addAll(updatedList);
      return Future.value(audioPlayerModels);
    } catch (e) {
      print("Something wrong with update all models");
      return Future.error(e);
    }
  }
}

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:klank_baan/application/audio/audio_player_notifier.dart';

import '../../constants/constants.dart';

final isPlayingProvider = StateProvider((ref) => false);

class ArtistOfTheMonth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.65,
      width: width,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
          image: NetworkImage(kaotm),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(30.0),
        color: Colors.black54,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Newly released",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontStyle: FontStyle.italic),
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Text(
                    "LIL XCTION - Love lies pt 2 [FT EDS]",
                    style: TextStyle(
                        fontSize: width > 500 ? 50.0 : 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Consumer(
                  builder: (context, watch, child) {
                    final audioPlayerState = watch(audioPlayerNotifierProvider);

                    return Expanded(
                      flex: 1,
                      child: audioPlayerState == AudioPlayerState.PLAYING
                          ? IconButton(
                              icon: Icon(Icons.pause),
                              onPressed: () {
                                context
                                    .read(audioPlayerNotifierProvider.notifier)
                                    .pause();
                              },
                              color: Colors.orange,
                              iconSize: 70.0,
                            )
                          : IconButton(
                              icon: Icon(Icons.play_arrow),
                              onPressed: () {
                                context.read(isPlayingProvider).state = true;
                                context
                                    .read(audioPlayerNotifierProvider.notifier)
                                    .play();
                              },
                              color: Colors.orange,
                              iconSize: 70.0,
                            ),
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
